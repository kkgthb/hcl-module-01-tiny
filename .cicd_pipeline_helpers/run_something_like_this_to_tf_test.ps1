$modules_to_test_live_in = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($PSScriptRoot, '..', 'src', 'all_my_modules', 'hello-world'))
$junit_test_results_folder_path = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($PSScriptRoot, '..', '.ignoreme', 'test-results'))
$junit_test_results_file_path = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($junit_test_results_folder_path, 'tf-test-results.xml'))

Push-Location($modules_to_test_live_in)

terraform init

New-Item `
    -ItemType 'Directory' `
    -Path $junit_test_results_folder_path `
    -Force `
| Out-Null
terraform test ("-junit-xml=$junit_test_results_file_path")

Pop-Location