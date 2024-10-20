using './09_WindowsVM.bicep'

param adminPassword = az.getSecret('a416b6b5-4fa5-44f6-a802-ba293ad47b8e', 'GithubActions', 'VMBuildsKV001', 'AdminPassword', '07a97c185e594755987aef5b2a0864b7')
