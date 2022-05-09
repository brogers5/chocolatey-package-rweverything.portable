Import-Module au

function global:au_BeforeUpdate ($Package)  {
    Set-DescriptionFromReadme -Package $Package -ReadmePath ".\DESCRIPTION.md"
}

function global:au_AfterUpdate ($Package)  {
    
}

function global:au_SearchReplace {
    @{
        "$($Latest.PackageName).nuspec" = @{
            "<packageSourceUrl>[^<]*</packageSourceUrl>" = "<packageSourceUrl>https://github.com/brogers5/chocolatey-package-$($Latest.PackageName)/tree/v$($Latest.Version)</packageSourceUrl>"
        }
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.Url32)'"
            "(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]url64\s*=\s*)('.*')" = "`$1'$($Latest.Url64)'"
            "(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $uri = 'http://rweverything.com/changelog/'
    $userAgent = "Update checker of Chocolatey Community Package 'rweverything.portable'"
    $page = Invoke-WebRequest -Uri $uri -UserAgent $userAgent -UseBasicParsing

    $version = [Version] [Regex]::Matches($page.Content, "<strong>v(.*) \d{1,2}/\d{1,2}/\d{4}?</strong>").Groups[1].Value

    return @{ 
        Url32 = "http://rweverything.com/downloads/RwPortableV$($version.Major).$($version.Minor).zip"
        Url64 = "http://rweverything.com/downloads/RwPortableX64V$($version.Major).$($version.Minor).zip"
        Version = $version
    }
}

Update-Package -NoReadme