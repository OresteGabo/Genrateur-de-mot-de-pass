$nbCarLabel=New-Object System.Windows.Forms.Label
$mbLabel=New-Object System.Windows.Forms.Label

$nbCarTextBox= New-Object System.Windows.Forms.TextBox
$mbTextBox= New-Object System.Windows.Forms.TextBox

$quitButton = New-Object System.Windows.Forms.Button
$generateButton = New-Object System.Windows.Forms.Button
$generateLetterButton = New-Object System.Windows.Forms.Button
$generateChiffreButton = New-Object System.Windows.Forms.Button

$pwdGeneratorForm = New-Object System.Windows.Forms.Form

$nbCarLabel.AutoSize = $true
$nbCarLabel.Location = New-Object System.Drawing.Point(50, 50)
$nbCarLabel.Text = 'Nombre de caracteres'

$mbLabel.AutoSize = $true
$mbLabel.Location = New-Object System.Drawing.Point(50, 100)
$mbLabel.Text = 'Mot de passe generé'

$nbCarTextBox.Size = New-Object System.Drawing.Size(100, 25)
$nbCarTextBox.Location = New-Object System.Drawing.Point(300, 50)
$nbCarTextBox.Text="8"

$mbTextBox.Size = New-Object System.Drawing.Size(100, 25)
$mbTextBox.Location = New-Object System.Drawing.Point(300, 100)
$mbTextBox.Text=""



$quitButton.Size = New-Object System.Drawing.Size(100, 25)
$quitButton.Location = New-Object System.Drawing.Point(50, 150)
$quitButton.Text = 'Quitter'
$quitButton.Add_Click({$pwdGeneratorForm.Close()})

$generateButton.Size = New-Object System.Drawing.Size(100, 25)
$generateButton.Location = New-Object System.Drawing.Point(300, 150)
$generateButton.Text = 'Generer'
$generateButton.Add_Click({
    $T=new-Object char[] 37
    $T='1bcdefghijklmnopqrstuvwqxyz0123456789'
    $taille=[int]$nbCarTextBox.Text
    $i=0
    [string]$mp=""
    while($i -lt $taille){
        $rd=Get-Random -Minimum 0 -Maximum 36
        $mp=$mp+$T[$rd]
        $i=$($i+1)
    }
    $mbTextBox.Text=$mp
    
})

$generateLetterButton.Size = New-Object System.Drawing.Size(350, 25)
$generateLetterButton.Location = New-Object System.Drawing.Point(50, 250)
$generateLetterButton.Text = 'Générer Lettre'
$generateLetterButton.Add_Click({
    $T=new-Object char[] 37
    $T='abcdefghijklmnopqrstuvwqxyz'
    $taille=[int]$nbCarTextBox.Text
    $i=0
    [string]$mp=""
    while($i -lt $taille){
        $rd=Get-Random -Minimum 0 -Maximum 26
        $mp=$mp+$T[$rd]
        $i=$($i+1)
    }
    $mbTextBox.Text=$mp
})

$generateChiffreButton.Size = New-Object System.Drawing.Size(350, 25)
$generateChiffreButton.Location = New-Object System.Drawing.Point(50, 350)
$generateChiffreButton.Text = 'Générer Chiffre'
$generateChiffreButton.Add_Click({
    
    $taille=[int]$nbCarTextBox.Text
    $i=0
    [string]$mp=""
    while($i -lt $taille){
        $rd=Get-Random -Minimum 0 -Maximum 9
        $mp=$mp+$rd
        $i=$($i+1)
    }
    $mbTextBox.Text=$mp
})



$pwdGeneratorForm.Size = New-Object System.Drawing.Size(450, 500)
$pwdGeneratorForm.Controls.Add($nbCarLabel)
$pwdGeneratorForm.Controls.Add($mbLabel)
$pwdGeneratorForm.Controls.Add($nbCarTextBox)
$pwdGeneratorForm.Controls.Add($mbTextBox)
$pwdGeneratorForm.Controls.Add($quitButton)
$pwdGeneratorForm.Controls.Add($generateButton)
$pwdGeneratorForm.Controls.Add($generateLetterButton)
$pwdGeneratorForm.Controls.Add($generateChiffreButton)
$pwdGeneratorForm.Text = 'Générateur du mot de passe'
$pwdGeneratorForm.ShowDialog()



