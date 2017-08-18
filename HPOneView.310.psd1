##############################################################################9
## (C) Copyright 2013-2017 Hewlett Packard Enterprise Development LP 
##############################################################################
<#
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
#>

@{
    
    # Script module or binary module file associated with this manifest
    RootModule = 'HPOneView.310.psm1'
    
    # Version number of this module.
    ModuleVersion = '3.10.1416.3042'
    
    # ID used to uniquely identify this module
    GUID = 'd3386e1b-f7ff-436a-beca-55891ede8624'
    
    # Author of this module
    Author = 'Hewlett-Packard Enterprise'
    
    # Company or vendor of this module
    CompanyName = 'Hewlett-Packard Enterprise'
    
    # Copyright statement for this module
    Copyright = '(C) Copyright 2013-2017 Hewlett-Packard Development Company, L.P.'
    
    # Description of the functionality provided by this module
    Description = 'HPE OneView PowerShell Library'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '4.0'

    # Minimum version of the .NET Framework required by this module
	# REMOVE TO SUPPORT PowerShell Core
	#DotNetFrameworkVersion = '4.0'
    
    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = '4.0'
    
    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
					  @{ModuleName = 'FormatPX'; ModuleVersion = '1.1.3.15'},
					  @{ModuleName = 'SnippetPX'; ModuleVersion = '1.0.5.18'}
					   )
    
    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = @(
						  'lib\HPOneView_Classes.310.dll',
						  'lib\SysadminsLV.Asn1Parser.dll'
						  )
    
    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
						'Appliance.format.ps1xml',
						'Networking.format.ps1xml',
						'Server.format.ps1xml',
						'Storage.format.ps1xml'
						)

    
    # List of all modules packaged with this module
    # ModuleList = @('HPOneView.310.psm1')
    
    # List of all files packaged with this module
    FileList = @(
				'HPOneView.310.psd1',
				'HPOneView.310.psm1',
				'Appliance.format.ps1xml',
				'Networking.format.ps1xml',
				'Server.format.ps1xml',
				'Storage.format.ps1xml',
				'HPOneView.310_d3386e1b-f7ff-436a-beca-55891ede8624_HelpInfo.xml',
				'HPOneView.310_d3386e1b-f7ff-436a-beca-55891ede8624_ModuleInfo.xml',
				'en-US\about_Appliance_Connections.help.txt',
				'en-US\about_HPOneView.310.help.txt',
				'en-US\HPOneView.310.psm1-help.xml',
				'lib\HPOneView_Classes.310.dll',
				'lib\SysadminsLV.Asn1Parser.dll',
				'Samples\AddServers_Monitored_Sample.ps1',
				'Samples\AddStorageSystem_Sample.ps1',
				'Samples\Alerts_Sample.ps1',
				'Samples\ApplianceConfig_Sample.ps1',
				'Samples\Appliance_Backup_Sample.ps1',
				'Samples\CreateEnclosureGroup_Sample.ps1',
				'Samples\Configure_IIS_WebDav_ExternalRepo_Sample.ps1',
				'Samples\ConfigureRemoteSupport_Sample.ps1',
				'Samples\DefineLogicalInterconnectGroup_AA_VC_Sample.ps1',
				'Samples\DefineLogicalInterconnectGroup_Sample.ps1',
				'Samples\DefineNetworks_AA_VC_Sample.ps1',
				'Samples\DefineNetworks_Sample.ps1',
				'Samples\ImportEnclosure_Sample.ps1',
				'Samples\Server_Multiconnection_AA_VC_Sample.ps1',
				'Samples\Server_Multiconnection_Sample.ps1',
				'Samples\Server_Multiconnection_SAN_Storage_Sample.ps1',
				'Samples\Server_Profile_Template_Multiconnection_Sample.ps1',
				'Samples\Wipe_Appliance.ps1'
				)

    # HelpInfo URI of this module
    HelpInfoURI = 'http://hewlettpackard.github.io/POSH-HPOneView/UpdateHelp'
    
	PrivateData = @{
		PSData = @{
			Tags = 'Hewlett', 'Packard', 'Enterprise', 'HPE', 'HPOneView', 'HPEOneView';
			LicenseUri = 'https://github.com/HewlettPackard/POSH-HPOneView/blob/master/LICENSE';
			ProjectUri = 'http://hewlettpackard.github.io/POSH-HPOneView';
			IconUri = '';
			ReleaseNotes = 'Release 3.10.1416.3042

-- First release to PowerShell Gallery.
-- Fixed Get-HPOVManagedSan to support -ErrorAction parameter.
-- Fixed New-HPOVServerProfile regression when assigning Servers.
-- Fixed Reset-HPOVEnclosureDevice where the resource eTag was not being sent to API, resulting in API exception being thrown.
-- [#282] Fixed New-HPOVLicense where the incorrect API object type was being passed in JSON body.
-- [#283] Fixed New-HPOVStorageVolumeTemplate where a missing enum was being passed to API causing exception to be generated.
-- Added Appliance Trusted Certificate management Cmdlets, Get-HPOVApplianceTrustedCertificate, Add-HPOVApplianceTrustedCertificate, and Remove-HPOVApplianceTrustedCertificate.
-- Added Enable-HPOVRemoteSupport and Disable-HPOVRemoteSupport Cmdlets for suported resources.
-- Added Get-HPOVRemoteSupportEntitlementStatus Cmdlet to return status and Warranty/Contract info.
-- Added Update-HPOVRemoteSupportEntitlement to initiate a resource entitlement refresh.
-- Added Enable and Disable switch parameters to Set-HPOVRemoteSupport Cmdlet to enable and disable Remote Support globally on the appliance, after successful configuration and registration.
-- Added Set-HPOVLogicalEnclosure Cmdlet to change LE settings, like Name or to grow the LE with new Enclosure Group.
-- Added missing Image Streamer parameters to New-HPOVServerProfileTemplate.
-- Refactored Install-HPOVApplianceCertificate to handle different certificate input methods.
-- Refactored Get-HPOVVersion to return $PSLibraryVersion varilable that is now available within your PowerShell session by default.  The Get-HPOVVersion will be deprecated once the library is published to PowerShellGallary.
-- Enhanced Get-HPOVIloSso Cmdlet to return a compliant session object for HPRESTCmdlets to use. In order to use this, you must specify the -IloRestSession switch parameter.
-- Deprecated and removed support for Start-HPOVLibraryTrace and Stop-HPOVLibraryTrace.  Replaced with Get-HPOVCommandTrace, which properly sets up the logging for capture verbose output from supplied script block.';
			ExternalModuleDependencies = @('FormatPX', 'SnippetPX') 

		}

	}

}
