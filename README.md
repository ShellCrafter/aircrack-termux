<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Aircrack-ng Installer for Termux — ShellCrafter</title>
  <style>
    :root{
      --bg:#0b1020; --panel:#0f1724; --muted:#98a0b3; --accent:#7dd3fc;
      --code-bg:#071026; --success:#10b981; --danger:#f87171;
      font-family: Inter, ui-sans-serif, system-ui, -apple-system, "Segoe UI",
                   Roboto, "Helvetica Neue", Arial;
    }
    body{margin:0;background:linear-gradient(180deg,#030318 0%,#071126 100%);color:#e6eef8}
    .wrap{max-width:980px;margin:36px auto;padding:28px;border-radius:12px;
      background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
      box-shadow:0 10px 30px rgba(2,6,23,0.6)}
    h1{margin:0 0 6px;font-size:28px;display:flex;align-items:center;gap:12px}
    h1 .emoji{font-size:26px}
    a.author{color:var(--accent);text-decoration:none;font-weight:600}
    p.lead{color:var(--muted);margin:8px 0 18px}
    .badges{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:18px}
    .badge{background:rgba(255,255,255,0.03);padding:6px 10px;border-radius:999px;color:var(--muted);font-size:13px}
    section{margin:18px 0;padding:18px;border-radius:10px;background:rgba(255,255,255,0.01)}
    h2{margin:0 0 8px;font-size:18px}
    ul{color:var(--muted);line-height:1.6}
    pre{background:var(--code-bg);padding:14px;border-radius:8px;overflow:auto;color:#dff4ff}
    code{font-family:ui-monospace, SFMono-Regular, Menlo, Monaco, "Roboto Mono", "Courier New", monospace}
    .cmd{display:flex;gap:10px;align-items:center}
    .copy-btn{margin-left:auto;background:transparent;border:1px solid rgba(255,255,255,0.06);
      color:var(--accent);padding:6px 8px;border-radius:8px;font-size:13px;cursor:pointer}
    footer{margin-top:18px;color:var(--muted);font-size:13px}
    .danger{color:var(--danger);font-weight:600}
    .ok{color:var(--success);font-weight:600}
    @media (max-width:640px){.wrap{margin:12px;padding:16px}}
  </style>
</head>
<body>
  <main class="wrap" role="main">
    <h1><span class="emoji">🛰️</span> Aircrack-ng Installer for Termux</h1>
    <div style="display:flex;gap:12px;align-items:center;flex-wrap:wrap">
      <div>
        <a class="author" href="https://github.com/ShellCrafter" target="_blank" rel="noopener">ShellCrafter</a>
        <span style="color:var(--muted)">·</span>
        <a class="author" href="https://github.com/ShellCrafter/aircrack-termux" target="_blank" rel="noopener">aircrack-termux</a>
      </div>
    </div>

    <p class="lead">Single-command installer that compiles and installs Aircrack-ng in Termux <strong>without proot</strong>. It copies binaries, installs libraries, and auto-fixes missing <code>.so</code> link errors.</p>

    <div class="badges">
      <div class="badge">✅ One-command install</div>
      <div class="badge">✅ Works inside Termux</div>
      <div class="badge">✅ Auto-fixes .so errors</div>
      <div class="badge">✅ aircrack-ng, airodump-ng, aireplay-ng, airbase-ng</div>
    </div>

    <section>
      <h2>📦 Installation</h2>
      <p>Run these commands in Termux to clone and run the installer:</p>

      <div class="cmd">
        <pre id="install-block"><code>pkg update -y && pkg upgrade -y
pkg install -y git
git clone https://github.com/ShellCrafter/aircrack-termux.git
cd aircrack-termux
bash install.sh</code></pre>
        <button class="copy-btn" data-target="install-block">Copy</button>
      </div>
    </section>

    <section>
      <h2>🛠 Usage</h2>
      <p>After installation, tools are available from anywhere in Termux:</p>

      <div class="cmd">
        <pre id="usage-block"><code>aircrack-ng --help
airodump-ng wlan0
aireplay-ng --help
airbase-ng --help</code></pre>
        <button class="copy-btn" data-target="usage-block">Copy</button>
      </div>
    </section>

    <section>
      <h2>📜 What the script does</h2>
      <ol>
        <li>Updates Termux packages</li>
        <li>Installs dependencies: <code>clang</code>, <code>automake</code>, <code>autoconf</code>, <code>binutils</code>, <code>libtool</code>, etc.</li>
        <li>Clones Aircrack-ng from GitHub</li>
        <li>Builds it from source</li>
        <li>Copies compiled binaries to <code>$PREFIX/bin</code></li>
        <li>Copies shared libs (<code>.so</code>) to <code>$PREFIX/lib</code></li>
        <li>Creates symlinks like <code>libaircrack-osdep.so → libaircrack-osdep-1.7.0.so</code></li>
        <li>Refreshes shell cache</li>
      </ol>
    </section>

    <section>
      <h2>📷 Example output</h2>
      <pre id="example-block"><code>Aireplay-ng 1.7  - (C) 2006-2022 Thomas d'Otreppe
https://www.aircrack-ng.org</code></pre>
      <button class="copy-btn" data-target="example-block">Copy</button>
    </section>

    <section>
      <h2 class="danger">⚠ Disclaimer</h2>
      <p class="danger">This tool is for <strong>educational &amp; authorized testing</strong> only. Do not use it on networks without explicit permission. The author is not responsible for misuse.</p>
    </section>

    <footer>
      <div>Support: open an <a style="color:var(--accent)" href="https://github.com/ShellCrafter/aircrack-termux/issues" target="_blank" rel="noopener">issue</a> on the repo.</div>
      <div style="margin-top:8px">Made with ❤️ by <a class="author" href="https://github.com/ShellCrafter" target="_blank" rel="noopener">ShellCrafter</a></div>
    </footer>
  </main>

  <script>
    // copy buttons
    document.querySelectorAll('.copy-btn').forEach(btn=>{
      btn.addEventListener('click', async ()=>{
        const id = btn.getAttribute('data-target');
        const codeEl = document.getElementById(id);
        if(!codeEl) return;
        const text = codeEl.innerText;
        try {
          await navigator.clipboard.writeText(text);
          btn.textContent = 'Copied';
          setTimeout(()=>btn.textContent='Copy',1400);
        } catch(e){
          // fallback
          const ta = document.createElement('textarea');
          ta.value = text;
          document.body.appendChild(ta);
          ta.select();
          document.execCommand('copy');
          ta.remove();
          btn.textContent = 'Copied';
          setTimeout(()=>btn.textContent='Copy',1400);
        }
      });
    });
  </script>
</body>
</html>
