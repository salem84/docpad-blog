---
layout: post
title: Execute Powershell script when Azure Role starts
date: 2013-10-06
tags: [".NET","Azure","Azure","Programmazione"]
---

1.  <span style="line-height: 1.7em;">Creare un command file (es. </span>**startup.cmd**<span style="line-height: 1.7em;">) che permette di modificare la policy di esecuzione degli script Powershell, consentendo di avviare anche gli script unsigned</span>
``` ps
powershell -command "set-executionpolicy Unrestricted" 
powershell -command "get-executionpolicy" >> cmdout.txt
```

2.  Creare il file Powershell (es. **RoleStart.ps1**)
3.  Dalla finestra Proprietà di Visual Studio, modificare la proprietà "_Copy to Output Directory_" di entrambi i file a "**Copy Always**"
4.  Modificare la classe principale del Role di Azure
``` cs
public class AzureRole : RoleEntryPoint
{
    public override bool OnStart()
    {
        var startInfo = new ProcessStartInfo()
        {
            FileName = "powershell.exe",
            Arguments = @".\setup\rolestart.ps1",
            RedirectStandardOutput = true,
            UseShellExecute = false,
        };

        var writer = new StreamWriter("psout.txt");

        var process = Process.Start(startInfo);
        process.WaitForExit();
        writer.Write(process.StandardOutput.ReadToEnd());
        writer.Close();

        return base.OnStart();
    }
}
``` 
