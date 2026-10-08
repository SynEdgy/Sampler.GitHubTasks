@{
    <#
        This is only required if you need to use the method PowerShellGet & PSDepend.
        It is not required for PSResourceGet or ModuleFast (and will be ignored).
        See Resolve-Dependency.psd1 on how to enable methods.
    #>
    #PSDependOptions             = @{
    #    AddToPath  = $true
    #    Target     = 'output\RequiredModules'
    #    Parameters = @{
    #        Repository = 'PSGallery'
    #    }
    #}

    InvokeBuild                 = 'latest'
    PSScriptAnalyzer            = 'latest'
    Pester                      = 'latest'
    Plaster                     = 'latest'
    ModuleBuilder               = 'latest'
    Configuration               = 'latest'
    MarkdownLinkCheck           = 'latest'
    ChangelogManagement         = 'latest'
    PowerShellForGitHub         = 'latest'
    'DscResource.Test'          = 'latest'
    'DscResource.AnalyzerRules' = 'latest'
    xDscResourceDesigner        = 'latest'

    # Prerequisite modules for documentation.
    'DscResource.DocGenerator'  = 'latest'
    PlatyPS                     = 'latest'
    'Microsoft.PowerShell.PSResourceGet' = 'latest'

    Sampler                     = @{
        version    = 'latest'
        Parameters = @{
            AllowPrerelease = $true
        }
    }
}
