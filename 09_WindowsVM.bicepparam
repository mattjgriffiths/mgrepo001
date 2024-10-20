using './09_WindowsVM.bicep'

param adminPassword = az.getSecret('a416b6b5-4fa5-44f6-a802-ba293ad47b8e', 'GithubActions', 'VMBuildsKV001', 'AdminPass', 'e2e33ddfe98a4567b38adc7d9e5239f9')
