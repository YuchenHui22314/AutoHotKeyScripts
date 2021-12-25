#SingleInstance Force
; AutoHotKey script to allow for easy input of various unicode characters often used in science.
; Written by Ken Hughes Jan 2015
; Tested with Windows 7 and 10
; Example:
; Type in /Delta and the script will automatically replace with Δ
; For best results, save this script into your startup folder which will be something like
; C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

; Autohotkey allows simpler ways to convert text to other text, but for unicode characters to work with Inkscape as well, they appear to need the function svc below.

; My experience with Autohotkey is limited. There's probably a more sophisticated way to do achieve the same result.

; I use the SendViaClipboard function found at http://evgeni.org/oldfish/AutoHotkey_shortcuts
; Shortened to svc since I'll be using it a lot.

svc(unicode_string) {
           temp = %clipboard%			; hold anything currently on clipboard as temporary variable
           clipboard = %unicode_string%		; put function argument (ie character to be inserted) onto the clipboard 
           Sleep 50
           Send ^v				; Paste the character
           Sleep 50
           clipboard = %temp%			; replace what was originally on clipboard
   }

; The 'C' ensures case-sensitivity
; The ? letters replacements work in the middle of a "word", ie a preceeding space is not required
#Hotstring ? c  

; REPLACEMENTS
; ---------------------------------

::/alpha::
svc("α")
return

::/beta::
svc("β")
return

::/gamma::
svc("γ")
return

::/Gamma::
svc("Γ")
return

::/delta::
svc("δ")
return

::/Delta::
svc("Δ")
return

::/epsilon::
svc("ε")
return

::/zeta::
svc("ζ")
return

::/eta::
svc("η")
return

::/theta::
svc("θ")
return

::/Theta::
svc("Θ")
return

::/kappa::
svc("κ")
return

::/lambda::
svc("λ")
return

::/Lambda::
svc("Λ")
return

::/mu::
svc("μ")
return

::/nu::
svc("ν")
return

::/xi::
svc("ξ")
return
 
::/Xi::
svc("Ξ")
return

::/pi::
svc("π")
return

::/pi::
svc("Π")
return

::/rho::
svc("ρ")
return

::/sigma::
svc("σ")
return

::/Sigma::
svc("Σ")
return

::/tau::
svc("τ")
return

::/upsilon::
svc("υ")
return

::/phi::
svc("φ")
return

::/Phi::
svc("Φ")
return

::/chi::
svc("χ")
return

::/psi::
svc("ψ")
return

::/Psi::
svc("Ψ")
return

::/omega::
svc("ω")
return

::/Omega::
svc("Ω")
return

::/pm::
svc("±")
return

; minus sign
::/ms::
svc("−")
return

::/degree::
svc("°")
return

; en dash
::/--::
svc("–")
return

::/en::
svc("–")
return

; em dash
::/em::
svc("—")
return

; prime
::/prime::
svc("′")
return

; double prime
::/dprime::
svc("″")
return

::/partial::
svc("∂")
return

::/times::
svc("×")
return

::/nabla::
svc("∇")
return

;thin space
::/,::
svc(" ")
return

::/approx::
svc("≈")
return

; upright d
::/ud::
svc("\mathrm{d}")
return
 
; proportional to
::/propto::
svc("∝")
return

; add more of your own here