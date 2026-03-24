3/24/2026:

From what I can tell, I seem to have made this codebase as a Terraform / OpenTofu importable module, and it looks like it serves that purpose just fine, so I just set it to be a template repo.

What I can't tell is why I have all sorts of stuff in a `.gitignore`d subfolder of this repo, playing around with importing a module that's a clone of this repo's module, but that is authentication-protected.

I mean, obviously, because I was playing with authentication issues in importing HCL modules.  I just don't know why I wasn't working on it in a brand new repo of its own.

Anyway, I don't see anything amazing in there, so I'm going to just delete it all now.  But if future-me wonders what I did with all those experiments I would've sworn I was working on, the answer is:  start over.  😘

They weren't that shocking anyway and seemed to be failing, at a glance through their comments.  Which isn't actually all that surprising considering I was noodling around in Azure at the time, and ran into issues like:
* [This](https://github.com/opentofu/opentofu/issues/3313#issuecomment-3469011097):
    * opentofu/opentofu#3313
* And these:
    * hashicorp/go-getter#33
    * hashicorp/terraform#31358
    * hashicorp/go-getter#373
* Also the same idea:
    * hashicorp/terraform#28659
    * hashicorp/terraform#36178
* And finally:
    * hashicorp/terraform#31463

If Terraform ever fixes stuff for Microsoft-heavy users, I'll just start over at that point and use this codebase to spin up an "consumable" module in some sort of Microsoft-authentication-protected HCL registry, and then use this codebase also as a starter for a totally separate "consumer" module that needs it _(that's where I need to start over -- I'm throwing away whatever code I was trying, and failing, to write, to get a "consumer" to work -- it should be easy enough to start over from docs via LLMs these days)_.