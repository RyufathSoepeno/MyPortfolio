import { useState, useEffect, useRef } from "react";

const EMPLOYEES = [
  { id: "001", name: "Ahmad Fauzi", dept: "Engineering", rek: "0012-****-4521", gaji: 15500000, status: null },
  { id: "002", name: "Siti Rahmawati", dept: "Finance", rek: "0012-****-7832", gaji: 13200000, status: null },
  { id: "003", name: "Budi Santoso", dept: "Operations", rek: "0012-****-3345", gaji: 11800000, status: null },
  { id: "004", name: "Dewi Kartika", dept: "Marketing", rek: "0012-****-9012", gaji: 14100000, status: null },
  { id: "005", name: "Rizky Pratama", dept: "Engineering", rek: "0012-****-5567", gaji: 16200000, status: null },
  { id: "006", name: "Nurul Hidayah", dept: "HR", rek: "0012-****-2289", gaji: 12500000, status: null },
  { id: "007", name: "Agus Wijaya", dept: "Operations", rek: "0012-****-6643", gaji: 10900000, status: null },
  { id: "008", name: "Maya Sari", dept: "Finance", rek: "0012-****-1198", gaji: 13800000, status: null },
  { id: "009", name: "Hendra Gunawan", dept: "Engineering", rek: "0012-****-8854", gaji: 17500000, status: null },
  { id: "010", name: "Lisa Permata", dept: "Marketing", rek: "0012-****-4476", gaji: 11200000, status: null },
];

const fmt = (n) => "Rp" + n.toLocaleString("id-ID");
const totalGaji = EMPLOYEES.reduce((s, e) => s + e.gaji, 0);

// Step definitions
const STEPS = [
  { key: "dashboard", label: "Dashboard HR", icon: "📊" },
  { key: "generate", label: "Generate File", icon: "📄" },
  { key: "transfer", label: "Kirim ke BRI", icon: "📡" },
  { key: "validate", label: "Validasi BRI", icon: "🔍" },
  { key: "execute", label: "Eksekusi Payroll", icon: "💸" },
  { key: "feedback", label: "Laporan Selesai", icon: "✅" },
];

function ProgressDots({ step, validationErrors }) {
  return (
    <div style={{ display: "flex", alignItems: "center", gap: 0, margin: "0 auto", width: "fit-content" }}>
      {STEPS.map((s, i) => {
        const active = i === step;
        const done = i < step;
        const isValidateWithErrors = s.key === "validate" && validationErrors && step > 3;
        return (
          <div key={s.key} style={{ display: "flex", alignItems: "center" }}>
            <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 4 }}>
              <div style={{
                width: 36, height: 36, borderRadius: "50%",
                background: done ? "#003D79" : active ? "#0060B9" : "#E2E8F0",
                color: done || active ? "#fff" : "#94A3B8",
                display: "flex", alignItems: "center", justifyContent: "center",
                fontSize: 16, fontWeight: 700, transition: "all 0.3s",
                boxShadow: active ? "0 0 0 4px rgba(0,96,185,0.2)" : "none"
              }}>
                {done ? "✓" : s.icon}
              </div>
              <span style={{
                fontSize: 10, fontWeight: active ? 700 : 500,
                color: active ? "#003D79" : done ? "#003D79" : "#94A3B8",
                whiteSpace: "nowrap"
              }}>{s.label}</span>
            </div>
            {i < STEPS.length - 1 && (
              <div style={{
                width: 48, height: 2, margin: "0 4px",
                marginBottom: 18,
                background: i < step ? "#003D79" : "#E2E8F0",
                transition: "background 0.3s"
              }} />
            )}
          </div>
        );
      })}
    </div>
  );
}

function AnimatedCounter({ target, duration = 1500 }) {
  const [val, setVal] = useState(0);
  useEffect(() => {
    let start = 0;
    const step = target / (duration / 16);
    const timer = setInterval(() => {
      start += step;
      if (start >= target) { setVal(target); clearInterval(timer); }
      else setVal(Math.floor(start));
    }, 16);
    return () => clearInterval(timer);
  }, [target]);
  return <>{fmt(val)}</>;
}

function PulsingDot({ color = "#16A34A" }) {
  return (
    <span style={{ position: "relative", display: "inline-block", width: 10, height: 10 }}>
      <span style={{
        position: "absolute", width: 10, height: 10, borderRadius: "50%",
        background: color, opacity: 0.3,
        animation: "pulse 1.5s ease-in-out infinite"
      }} />
      <span style={{
        position: "absolute", top: 2, left: 2, width: 6, height: 6,
        borderRadius: "50%", background: color
      }} />
    </span>
  );
}

export default function PayrollPrototype() {
  const [step, setStep] = useState(0);
  const [employees, setEmployees] = useState(EMPLOYEES);
  const [selectedAll, setSelectedAll] = useState(true);
  const [generating, setGenerating] = useState(false);
  const [transferProgress, setTransferProgress] = useState(0);
  const [validating, setValidating] = useState(false);
  const [validated, setValidated] = useState([]);
  const [executing, setExecuting] = useState(false);
  const [executed, setExecuted] = useState([]);
  const [showPassword, setShowPassword] = useState(false);

  const resetAll = () => {
    setStep(0);
    setEmployees(EMPLOYEES);
    setSelectedAll(true);
    setGenerating(false);
    setTransferProgress(0);
    setValidating(false);
    setValidated([]);
    setExecuting(false);
    setExecuted([]);
  };

  // Step 2: Generate file animation
  const handleGenerate = () => {
    setGenerating(true);
    setTimeout(() => {
      setGenerating(false);
      setStep(2);
    }, 2000);
  };

  // Step 3: Transfer animation
  useEffect(() => {
    if (step === 2) {
      setTransferProgress(0);
      const timer = setInterval(() => {
        setTransferProgress(p => {
          if (p >= 100) { clearInterval(timer); return 100; }
          return p + 2;
        });
      }, 60);
      return () => clearInterval(timer);
    }
  }, [step]);

  useEffect(() => {
    if (transferProgress >= 100 && step === 2) {
      setTimeout(() => setStep(3), 600);
    }
  }, [transferProgress]);

  // Step 4: Validation animation
  useEffect(() => {
    if (step === 3) {
      setValidating(true);
      setValidated([]);
      const empsCopy = [...employees];
      let i = 0;
      const timer = setInterval(() => {
        if (i >= empsCopy.length) {
          clearInterval(timer);
          setValidating(false);
          return;
        }
        const emp = empsCopy[i];
        if (!emp) { clearInterval(timer); setValidating(false); return; }
        const hasError = i === 6; // Agus Wijaya gets a warning
        setValidated(prev => [...prev, { id: emp.id, name: emp.name, rek: emp.rek, gaji: emp.gaji, valid: !hasError, note: hasError ? "Saldo rekening tidak aktif — skip" : "OK" }]);
        i++;
      }, 400);
      return () => clearInterval(timer);
    }
  }, [step]);

  // Step 5: Execute animation
  const execTimerRef = useRef(null);

  useEffect(() => {
    return () => { if (execTimerRef.current) clearInterval(execTimerRef.current); };
  }, []);

  const handleExecute = () => {
    setExecuting(true);
    setExecuted([]);
    setStep(4);
    let i = 0;
    const validEmps = employees.filter((_, idx) => idx !== 6);
    if (execTimerRef.current) clearInterval(execTimerRef.current);
    execTimerRef.current = setInterval(() => {
      if (i >= validEmps.length || !validEmps[i]) {
        clearInterval(execTimerRef.current);
        execTimerRef.current = null;
        setExecuting(false);
        setTimeout(() => setStep(5), 800);
        return;
      }
      const empId = validEmps[i].id;
      setExecuted(prev => [...prev, empId]);
      i++;
    }, 350);
  };

  const navStyle = {
    display: "flex", alignItems: "center", justifyContent: "space-between",
    padding: "12px 32px", background: "#003D79", color: "#fff"
  };

  const cardStyle = {
    background: "#fff", borderRadius: 12, padding: 24,
    boxShadow: "0 1px 8px rgba(0,0,0,0.06)", border: "1px solid #E8EDF2"
  };

  return (
    <div style={{ minHeight: "100vh", background: "#F3F6FA", fontFamily: "'Segoe UI', Arial, sans-serif" }}>
      <style>{`
        @keyframes pulse { 0%,100% { transform: scale(1); opacity: 0.3; } 50% { transform: scale(2); opacity: 0; } }
        @keyframes slideUp { from { opacity: 0; transform: translateY(12px); } to { opacity: 1; transform: translateY(0); } }
        @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
        @keyframes spin { to { transform: rotate(360deg); } }
        .row-hover:hover { background: #F8FAFC !important; }
        .btn-primary { background: #003D79; color: #fff; border: none; padding: 10px 24px; border-radius: 8px; font-size: 14px; font-weight: 600; cursor: pointer; transition: all 0.15s; }
        .btn-primary:hover { background: #002B57; }
        .btn-primary:disabled { background: #94A3B8; cursor: not-allowed; }
        .btn-outline { background: transparent; color: #003D79; border: 1.5px solid #003D79; padding: 10px 24px; border-radius: 8px; font-size: 14px; font-weight: 600; cursor: pointer; transition: all 0.15s; }
        .btn-outline:hover { background: #E8F0FE; }
      `}</style>

      {/* Nav */}
      <div style={navStyle}>
        <div style={{ display: "flex", alignItems: "center", gap: 12 }}>
          <div style={{ width: 32, height: 32, borderRadius: 8, background: "#fff", display: "flex", alignItems: "center", justifyContent: "center", fontWeight: 800, fontSize: 12, color: "#003D79" }}>PT</div>
          <div>
            <div style={{ fontWeight: 700, fontSize: 15 }}>PT ABC Indonesia</div>
            <div style={{ fontSize: 11, opacity: 0.7 }}>SAP HCM · Payroll Dashboard</div>
          </div>
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 20 }}>
          <span style={{ fontSize: 13, opacity: 0.8 }}>Periode: Juli 2026</span>
          <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
            <div style={{ width: 32, height: 32, borderRadius: "50%", background: "#0060B9", display: "flex", alignItems: "center", justifyContent: "center", fontSize: 13, fontWeight: 600 }}>HR</div>
            <span style={{ fontSize: 13 }}>Admin Payroll</span>
          </div>
        </div>
      </div>

      {/* Progress */}
      <div style={{ background: "#fff", borderBottom: "1px solid #E8EDF2", padding: "20px 32px 12px" }}>
        <ProgressDots step={step} />
      </div>

      {/* Content */}
      <div style={{ maxWidth: 1100, margin: "0 auto", padding: "24px 32px" }}>

        {/* STEP 0: Dashboard */}
        {step === 0 && (
          <div style={{ animation: "slideUp 0.4s ease" }}>
            {/* Summary cards */}
            <div style={{ display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: 16, marginBottom: 24 }}>
              <div style={{ ...cardStyle, borderLeft: "4px solid #003D79" }}>
                <div style={{ fontSize: 12, color: "#6B7A8D", marginBottom: 4 }}>Total Karyawan</div>
                <div style={{ fontSize: 28, fontWeight: 800, color: "#003D79" }}>{employees.length}</div>
              </div>
              <div style={{ ...cardStyle, borderLeft: "4px solid #0060B9" }}>
                <div style={{ fontSize: 12, color: "#6B7A8D", marginBottom: 4 }}>Total Gaji</div>
                <div style={{ fontSize: 20, fontWeight: 800, color: "#003D79" }}>{fmt(totalGaji)}</div>
              </div>
              <div style={{ ...cardStyle, borderLeft: "4px solid #16A34A" }}>
                <div style={{ fontSize: 12, color: "#6B7A8D", marginBottom: 4 }}>Status</div>
                <div style={{ display: "flex", alignItems: "center", gap: 6 }}>
                  <PulsingDot color="#16A34A" />
                  <span style={{ fontSize: 14, fontWeight: 600, color: "#16A34A" }}>Siap Diproses</span>
                </div>
              </div>
              <div style={{ ...cardStyle, borderLeft: "4px solid #F59E0B" }}>
                <div style={{ fontSize: 12, color: "#6B7A8D", marginBottom: 4 }}>Tanggal Payroll</div>
                <div style={{ fontSize: 16, fontWeight: 700, color: "#1A2332" }}>25 Juli 2026</div>
              </div>
            </div>

            {/* Employee table */}
            <div style={cardStyle}>
              <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 16 }}>
                <div>
                  <h3 style={{ fontSize: 16, fontWeight: 700, color: "#1A2332", margin: 0 }}>Data Payroll Karyawan</h3>
                  <p style={{ fontSize: 12, color: "#6B7A8D", margin: "4px 0 0" }}>Periode Juli 2026 · {employees.length} karyawan terpilih</p>
                </div>
                <div style={{ display: "flex", gap: 8 }}>
                  <span style={{ fontSize: 12, padding: "4px 12px", background: "#E8F0FE", borderRadius: 20, color: "#003D79", fontWeight: 600 }}>BRI · SFTP</span>
                </div>
              </div>

              <table style={{ width: "100%", borderCollapse: "collapse", fontSize: 13 }}>
                <thead>
                  <tr style={{ borderBottom: "2px solid #E8EDF2" }}>
                    <th style={{ textAlign: "left", padding: "10px 12px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>
                      <input type="checkbox" checked={selectedAll} onChange={() => setSelectedAll(!selectedAll)} style={{ marginRight: 8 }} />
                      ID
                    </th>
                    <th style={{ textAlign: "left", padding: "10px 12px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>NAMA KARYAWAN</th>
                    <th style={{ textAlign: "left", padding: "10px 12px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>DEPARTEMEN</th>
                    <th style={{ textAlign: "left", padding: "10px 12px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>NO. REKENING BRI</th>
                    <th style={{ textAlign: "right", padding: "10px 12px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>GAJI BERSIH</th>
                  </tr>
                </thead>
                <tbody>
                  {employees.map((e, i) => (
                    <tr key={e.id} className="row-hover" style={{ borderBottom: "1px solid #F1F5F9", transition: "background 0.15s" }}>
                      <td style={{ padding: "10px 12px" }}>
                        <input type="checkbox" checked={selectedAll} readOnly style={{ marginRight: 8 }} />
                        {e.id}
                      </td>
                      <td style={{ padding: "10px 12px", fontWeight: 600, color: "#1A2332" }}>{e.name}</td>
                      <td style={{ padding: "10px 12px", color: "#4B5563" }}>{e.dept}</td>
                      <td style={{ padding: "10px 12px", color: "#4B5563", fontFamily: "monospace" }}>{e.rek}</td>
                      <td style={{ padding: "10px 12px", textAlign: "right", fontWeight: 600, color: "#003D79", fontFamily: "monospace" }}>{fmt(e.gaji)}</td>
                    </tr>
                  ))}
                </tbody>
                <tfoot>
                  <tr style={{ borderTop: "2px solid #E8EDF2" }}>
                    <td colSpan={4} style={{ padding: "12px", fontWeight: 700, color: "#1A2332" }}>Total Payroll</td>
                    <td style={{ padding: "12px", textAlign: "right", fontWeight: 800, fontSize: 16, color: "#003D79", fontFamily: "monospace" }}>{fmt(totalGaji)}</td>
                  </tr>
                </tfoot>
              </table>

              <div style={{ display: "flex", justifyContent: "flex-end", gap: 12, marginTop: 20 }}>
                <button className="btn-outline">Unduh CSV</button>
                <button className="btn-primary" onClick={() => { setStep(1); setTimeout(handleGenerate, 300); }}>
                  Proses Payroll →
                </button>
              </div>
            </div>
          </div>
        )}

        {/* STEP 1: Generating file */}
        {step === 1 && (
          <div style={{ ...cardStyle, maxWidth: 560, margin: "48px auto", textAlign: "center", animation: "slideUp 0.4s ease" }}>
            <div style={{ width: 64, height: 64, borderRadius: "50%", background: "#E8F0FE", margin: "0 auto 20px", display: "flex", alignItems: "center", justifyContent: "center" }}>
              <div style={{ width: 28, height: 28, border: "3px solid #003D79", borderTopColor: "transparent", borderRadius: "50%", animation: "spin 0.8s linear infinite" }} />
            </div>
            <h3 style={{ fontSize: 18, fontWeight: 700, color: "#1A2332", margin: "0 0 8px" }}>Generating Payroll File</h3>
            <p style={{ fontSize: 13, color: "#6B7A8D", margin: 0 }}>Menghasilkan file payroll terenkripsi (PGP)...</p>
            <div style={{ margin: "20px 0", background: "#F1F5F9", borderRadius: 8, padding: 16, textAlign: "left", fontFamily: "monospace", fontSize: 12, color: "#4B5563" }}>
              <div>📄 payroll_jul2026_ptabc.csv.pgp</div>
              <div style={{ marginTop: 4, color: "#94A3B8" }}>10 records · {fmt(totalGaji)} · SHA-256 checksum generating...</div>
            </div>
          </div>
        )}

        {/* STEP 2: Transfer to BRI */}
        {step === 2 && (
          <div style={{ ...cardStyle, maxWidth: 600, margin: "48px auto", animation: "slideUp 0.4s ease" }}>
            <div style={{ textAlign: "center", marginBottom: 24 }}>
              <h3 style={{ fontSize: 18, fontWeight: 700, color: "#1A2332", margin: "0 0 8px" }}>Mengirim ke Server BRI</h3>
              <p style={{ fontSize: 13, color: "#6B7A8D", margin: 0 }}>Transfer file via SFTP terenkripsi</p>
            </div>

            {/* Transfer visual */}
            <div style={{ display: "flex", alignItems: "center", justifyContent: "center", gap: 24, margin: "32px 0" }}>
              <div style={{ textAlign: "center" }}>
                <div style={{ width: 56, height: 56, borderRadius: 12, background: "#E8F0FE", display: "flex", alignItems: "center", justifyContent: "center", fontSize: 24 }}>🏢</div>
                <div style={{ fontSize: 11, fontWeight: 600, color: "#003D79", marginTop: 6 }}>PT ABC</div>
              </div>

              <div style={{ flex: 1, maxWidth: 200, position: "relative" }}>
                <div style={{ height: 6, background: "#E2E8F0", borderRadius: 3, overflow: "hidden" }}>
                  <div style={{ height: "100%", background: "linear-gradient(90deg, #003D79, #0060B9)", borderRadius: 3, width: `${transferProgress}%`, transition: "width 0.1s" }} />
                </div>
                <div style={{ textAlign: "center", fontSize: 12, fontWeight: 700, color: "#003D79", marginTop: 6 }}>{transferProgress}%</div>
                <div style={{ textAlign: "center", fontSize: 10, color: "#94A3B8" }}>SFTP · Port 22 · TLS 1.3</div>
              </div>

              <div style={{ textAlign: "center" }}>
                <div style={{ width: 56, height: 56, borderRadius: 12, background: transferProgress >= 100 ? "#DCFCE7" : "#E8F0FE", display: "flex", alignItems: "center", justifyContent: "center", fontSize: 24, transition: "background 0.3s" }}>🏦</div>
                <div style={{ fontSize: 11, fontWeight: 600, color: "#003D79", marginTop: 6 }}>BRI Server</div>
              </div>
            </div>

            <div style={{ background: "#F8FAFC", borderRadius: 8, padding: 14, fontFamily: "monospace", fontSize: 11, color: "#4B5563" }}>
              <div style={{ color: "#16A34A" }}>✓ Connection established: sftp.bri.co.id:22</div>
              <div style={{ color: "#16A34A" }}>✓ Host key verified (SHA-256)</div>
              <div style={{ color: "#16A34A" }}>✓ Authentication: public key</div>
              {transferProgress > 30 && <div style={{ color: "#0060B9" }}>↑ Uploading payroll_jul2026_ptabc.csv.pgp...</div>}
              {transferProgress >= 100 && <div style={{ color: "#16A34A", fontWeight: 600 }}>✓ Upload complete — checksum verified</div>}
            </div>
          </div>
        )}

        {/* STEP 3: Validation */}
        {step === 3 && (
          <div style={{ ...cardStyle, maxWidth: 700, margin: "32px auto", animation: "slideUp 0.4s ease" }}>
            <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: 20 }}>
              <div>
                <h3 style={{ fontSize: 18, fontWeight: 700, color: "#1A2332", margin: "0 0 4px" }}>Validasi oleh Sistem BRI</h3>
                <p style={{ fontSize: 12, color: "#6B7A8D", margin: 0 }}>Dekripsi file, validasi format, cek rekening & saldo</p>
              </div>
              {validating && (
                <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
                  <div style={{ width: 16, height: 16, border: "2px solid #0060B9", borderTopColor: "transparent", borderRadius: "50%", animation: "spin 0.8s linear infinite" }} />
                  <span style={{ fontSize: 12, color: "#0060B9", fontWeight: 600 }}>Memvalidasi...</span>
                </div>
              )}
            </div>

            <div style={{ display: "flex", flexDirection: "column", gap: 6 }}>
              {validated.map((v, i) => {
                return (
                  <div key={v.id} style={{
                    display: "flex", alignItems: "center", justifyContent: "space-between",
                    padding: "10px 14px", borderRadius: 8,
                    background: v.valid ? "#F0FDF4" : "#FEF2F2",
                    border: `1px solid ${v.valid ? "#BBF7D0" : "#FECACA"}`,
                    animation: "fadeIn 0.3s ease"
                  }}>
                    <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
                      <span style={{ fontSize: 16 }}>{v.valid ? "✅" : "⚠️"}</span>
                      <span style={{ fontSize: 13, fontWeight: 600, color: "#1A2332" }}>{v.name}</span>
                      <span style={{ fontSize: 12, color: "#6B7A8D" }}>{v.rek}</span>
                    </div>
                    <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
                      <span style={{ fontSize: 12, fontWeight: 600, fontFamily: "monospace", color: v.valid ? "#003D79" : "#DC2626" }}>
                        {v.valid ? fmt(v.gaji) : "—"}
                      </span>
                      <span style={{
                        fontSize: 10, fontWeight: 600, padding: "2px 8px", borderRadius: 10,
                        background: v.valid ? "#DCFCE7" : "#FEE2E2",
                        color: v.valid ? "#166534" : "#991B1B"
                      }}>{v.note}</span>
                    </div>
                  </div>
                );
              })}
            </div>

            {!validating && validated.length === employees.length && (
              <div style={{ marginTop: 20, animation: "slideUp 0.3s ease" }}>
                <div style={{
                  padding: 14, borderRadius: 8, background: "#FFF7ED",
                  border: "1px solid #FED7AA", marginBottom: 16
                }}>
                  <div style={{ fontSize: 13, fontWeight: 600, color: "#9A3412" }}>
                    ⚠️ 1 rekening tidak valid — akan di-skip dari proses payroll
                  </div>
                  <div style={{ fontSize: 12, color: "#9A3412", marginTop: 4 }}>
                    9 dari 10 karyawan lolos validasi · Total: {fmt(totalGaji - 10900000)}
                  </div>
                </div>
                <div style={{ display: "flex", justifyContent: "flex-end", gap: 12 }}>
                  <button className="btn-outline" onClick={resetAll}>Batal</button>
                  <button className="btn-primary" onClick={handleExecute}>
                    Lanjutkan Eksekusi (9 karyawan) →
                  </button>
                </div>
              </div>
            )}
          </div>
        )}

        {/* STEP 4: Executing */}
        {step === 4 && (
          <div style={{ ...cardStyle, maxWidth: 560, margin: "48px auto", textAlign: "center", animation: "slideUp 0.4s ease" }}>
            <div style={{ width: 64, height: 64, borderRadius: "50%", background: "#DCFCE7", margin: "0 auto 20px", display: "flex", alignItems: "center", justifyContent: "center", fontSize: 28 }}>
              💸
            </div>
            <h3 style={{ fontSize: 18, fontWeight: 700, color: "#1A2332", margin: "0 0 8px" }}>Eksekusi Transfer Payroll</h3>
            <p style={{ fontSize: 13, color: "#6B7A8D", margin: "0 0 20px" }}>BRI Core Banking memproses transfer gaji ke rekening karyawan...</p>

            <div style={{ display: "flex", flexDirection: "column", gap: 4 }}>
              {employees.filter((_, i) => i !== 6).map(e => {
                const done = executed.includes(e.id);
                return (
                  <div key={e.id} style={{
                    display: "flex", alignItems: "center", justifyContent: "space-between",
                    padding: "8px 12px", borderRadius: 6,
                    background: done ? "#F0FDF4" : "#F8FAFC",
                    transition: "background 0.3s"
                  }}>
                    <span style={{ fontSize: 12, color: done ? "#166534" : "#94A3B8" }}>
                      {done ? "✅" : "⏳"} {e.name}
                    </span>
                    <span style={{ fontSize: 12, fontFamily: "monospace", color: done ? "#166534" : "#CBD5E1", fontWeight: 600 }}>
                      {done ? fmt(e.gaji) : "—"}
                    </span>
                  </div>
                );
              })}
            </div>

            <div style={{ marginTop: 16, fontSize: 12, color: "#6B7A8D" }}>
              {executed.length} / 9 transfer selesai
              {!executing && executed.length === 9 && (
                <span style={{ marginLeft: 8, color: "#16A34A", fontWeight: 600 }}>
                  — Semua berhasil! Menyiapkan laporan...
                </span>
              )}
            </div>
          </div>
        )}

        {/* STEP 5: Feedback / Report */}
        {step === 5 && (
          <div style={{ animation: "slideUp 0.4s ease" }}>
            {/* Success banner */}
            <div style={{
              background: "linear-gradient(135deg, #166534, #16A34A)", borderRadius: 12,
              padding: "28px 32px", color: "#fff", marginBottom: 24,
              display: "flex", alignItems: "center", justifyContent: "space-between"
            }}>
              <div>
                <div style={{ fontSize: 28, fontWeight: 800, marginBottom: 4 }}>Payroll Berhasil Diproses ✓</div>
                <div style={{ fontSize: 14, opacity: 0.9 }}>9 dari 10 karyawan · Periode Juli 2026 · {new Date().toLocaleDateString("id-ID", { day: "numeric", month: "long", year: "numeric", hour: "2-digit", minute: "2-digit" })}</div>
              </div>
              <div style={{ textAlign: "right" }}>
                <div style={{ fontSize: 12, opacity: 0.7 }}>Total Transfer</div>
                <div style={{ fontSize: 28, fontWeight: 800 }}>{fmt(totalGaji - 10900000)}</div>
              </div>
            </div>

            {/* Report cards */}
            <div style={{ display: "grid", gridTemplateColumns: "repeat(3, 1fr)", gap: 16, marginBottom: 24 }}>
              <div style={{ ...cardStyle, textAlign: "center" }}>
                <div style={{ fontSize: 32, fontWeight: 800, color: "#16A34A" }}>9</div>
                <div style={{ fontSize: 12, color: "#6B7A8D" }}>Berhasil Transfer</div>
              </div>
              <div style={{ ...cardStyle, textAlign: "center" }}>
                <div style={{ fontSize: 32, fontWeight: 800, color: "#DC2626" }}>1</div>
                <div style={{ fontSize: 12, color: "#6B7A8D" }}>Gagal (Rek. Tidak Aktif)</div>
              </div>
              <div style={{ ...cardStyle, textAlign: "center" }}>
                <div style={{ fontSize: 32, fontWeight: 800, color: "#003D79" }}>3.2 dtk</div>
                <div style={{ fontSize: 12, color: "#6B7A8D" }}>Total Waktu Proses</div>
              </div>
            </div>

            {/* Detail table */}
            <div style={cardStyle}>
              <h3 style={{ fontSize: 16, fontWeight: 700, color: "#1A2332", margin: "0 0 16px" }}>Detail Laporan Transfer</h3>
              <table style={{ width: "100%", borderCollapse: "collapse", fontSize: 13 }}>
                <thead>
                  <tr style={{ borderBottom: "2px solid #E8EDF2" }}>
                    <th style={{ textAlign: "left", padding: "8px 10px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>NAMA</th>
                    <th style={{ textAlign: "left", padding: "8px 10px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>REKENING</th>
                    <th style={{ textAlign: "right", padding: "8px 10px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>NOMINAL</th>
                    <th style={{ textAlign: "center", padding: "8px 10px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>STATUS</th>
                    <th style={{ textAlign: "left", padding: "8px 10px", color: "#6B7A8D", fontWeight: 600, fontSize: 11 }}>REF. ID</th>
                  </tr>
                </thead>
                <tbody>
                  {employees.map((e, i) => {
                    const failed = i === 6;
                    return (
                      <tr key={e.id} style={{ borderBottom: "1px solid #F1F5F9" }}>
                        <td style={{ padding: "8px 10px", fontWeight: 500, color: "#1A2332" }}>{e.name}</td>
                        <td style={{ padding: "8px 10px", fontFamily: "monospace", color: "#4B5563", fontSize: 12 }}>{e.rek}</td>
                        <td style={{ padding: "8px 10px", textAlign: "right", fontFamily: "monospace", fontWeight: 600, color: failed ? "#DC2626" : "#003D79" }}>
                          {failed ? "—" : fmt(e.gaji)}
                        </td>
                        <td style={{ padding: "8px 10px", textAlign: "center" }}>
                          <span style={{
                            fontSize: 11, fontWeight: 600, padding: "2px 10px", borderRadius: 10,
                            background: failed ? "#FEE2E2" : "#DCFCE7",
                            color: failed ? "#991B1B" : "#166534"
                          }}>{failed ? "GAGAL" : "SUKSES"}</span>
                        </td>
                        <td style={{ padding: "8px 10px", fontFamily: "monospace", fontSize: 11, color: "#94A3B8" }}>
                          {failed ? "—" : `TRX${Date.now().toString(36).toUpperCase().slice(-6)}${i}`}
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>

              <div style={{ display: "flex", justifyContent: "flex-end", gap: 12, marginTop: 20 }}>
                <button className="btn-outline" onClick={() => alert("Download laporan PDF...")}>Unduh Laporan PDF</button>
                <button className="btn-primary" onClick={resetAll}>Kembali ke Dashboard</button>
              </div>
            </div>
          </div>
        )}
      </div>

      {/* Footer */}
      <div style={{ textAlign: "center", padding: "20px 32px", fontSize: 11, color: "#94A3B8" }}>
        Prototype · BRI Real-Time Payroll via SFTP · Kelompok 4 Danantara Indonesia
      </div>
    </div>
  );
}
