<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LKEController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\HasilController;
use App\Http\Controllers\DokumenController;
use App\Http\Controllers\GenerateController;
use App\Http\Controllers\ManageTimController;
use App\Http\Controllers\RBGeneralController;
use App\Http\Controllers\RBTematikController;
use App\Http\Controllers\ManageUserController;
use App\Http\Controllers\MasterDataController;
use App\Http\Controllers\WebDashboardController;
use App\Http\Controllers\CapaianOutputController;
use App\Http\Controllers\DataLKERenaksiController;
use App\Http\Controllers\RBTematikImportController;
use App\Http\Controllers\ERenaksiRBGeneralController;
use App\Http\Controllers\EvaluasiController;
use App\Http\Controllers\RuangBelajar\AdminController;
use App\Http\Controllers\DataKonversiJawabanController;
use App\Http\Controllers\RuangBelajar\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home');
})->name('home');



Route::get('/emptyDT', function () {
    return response()->json(['data' => []]);
});
Route::get('/bcrypt/', [HomeController::class, 'bcrypt']);


Route::middleware('auth')->group(function () {
    // Route::get('/dashboard', function () {
    //     return view('dashboard');
    // })->name('dashboard');
    Route::get('/profil', [HomeController::class, 'profil'])->name('profil');
    Route::post('/profil_simpan', [HomeController::class, 'profil_simpan']);
    // MASTER DATA

    // Web Dashboard
    Route::middleware(['auth'])->group(function () {
        Route::get('webdashboard/rb-general/rencana-aksi', [WebDashboardController::class, 'rbGeneral'])->name('webdashboard.rb-general');
        Route::get('webdashboard/rb-general/capaian-output', [CapaianOutputController::class, 'rbGeneralCapaianOutput'])->name('webdashboard.rb-general.capaian-output');
        Route::get('webdashboard/rb-tematik/rencana-aksi', [WebDashboardController::class, 'rbTematik'])->name('webdashboard.rb-tematik');
        Route::get('webdashboard/rb-tematik/capaian-output', [CapaianOutputController::class, 'rbTematikCapaianOutput'])->name('webdashboard.rb-tematik.capaian-output');
        Route::get('webdashboard/rb-tematik/capaian-output/generate/{pilihan}', [CapaianOutputController::class, 'rbTematikCapaianOutputGenerate'])->name('cogenerate');
        Route::get('webdashboard/hasil-evaluasi', [WebDashboardController::class, 'hasilEvaluasi'])->name('webdashboard.hasil-evaluasi');
    });
    // Kegiatan Utama
    Route::get('/master-data/kegiatan_utama', [MasterDataController::class, 'kegiatan_utama'])->name('kegiatan_utama');
    Route::get('/master-data/kegiatan_utama/getDatas', [MasterDataController::class, 'kegiatan_utama_getDatas']);
    Route::get('/master-data/kegiatan_utama/getData/{id}', [MasterDataController::class, 'kegiatan_utama_getData']);
    Route::post('/master-data/kegiatan_utama/simpan', [MasterDataController::class, 'kegiatan_utama_simpan']);
    Route::post('/master-data/kegiatan_utama/hapus', [MasterDataController::class, 'kegiatan_utama_hapus']);
    // Indikator
    Route::get('/master-data/indikator', [MasterDataController::class, 'indikator'])->name('indikator');
    Route::get('/master-data/indikator/getDatas', [MasterDataController::class, 'indikator_getDatas']);
    Route::get('/master-data/indikator/getData/{id}', [MasterDataController::class, 'indikator_getData']);
    Route::post('/master-data/indikator/simpan', [MasterDataController::class, 'indikator_simpan']);
    Route::post('/master-data/indikator/hapus', [MasterDataController::class, 'indikator_hapus']);
    // LKE Kegiatan
    Route::get('/master-data/lke_kegiatan', [MasterDataController::class, 'lke_kegiatan'])->name('lke_kegiatan');
    Route::get('/master-data/lke_kegiatan/getDatas', [MasterDataController::class, 'lke_kegiatan_getDatas']);
    Route::get('/master-data/lke_kegiatan/getData/{id}', [MasterDataController::class, 'lke_kegiatan_getData']);
    Route::post('/master-data/lke_kegiatan/simpan', [MasterDataController::class, 'lke_kegiatan_simpan']);
    Route::post('/master-data/lke_kegiatan/hapus', [MasterDataController::class, 'lke_kegiatan_hapus']);
    // Tema
    Route::get('/master-data/tema', [MasterDataController::class, 'tema'])->name('tema');
    Route::get('/master-data/tema/getDatas', [MasterDataController::class, 'tema_getDatas']);
    Route::get('/master-data/tema/getData/{id}', [MasterDataController::class, 'tema_getData']);
    Route::post('/master-data/tema/simpan', [MasterDataController::class, 'tema_simpan']);
    Route::post('/master-data/tema/hapus', [MasterDataController::class, 'tema_hapus']);
    // Dokumen
    Route::get('/master-data/dokumen', [MasterDataController::class, 'dokumen'])->name('master-data_dokumen');
    Route::get('/master-data/dokumen/getDataTahun', [MasterDataController::class, 'dokumen_getDataTahun']);
    Route::post('/master-data/dokumen/simpanTahun', [MasterDataController::class, 'dokumen_simpanTahun']);
    Route::post('/master-data/dokumen/hapusTahun', [MasterDataController::class, 'dokumen_hapusTahun']);
    Route::get('/master-data/dokumen/getDataKategoris', [MasterDataController::class, 'dokumen_getDataKategoris']);
    Route::get('/master-data/dokumen/getDataKategori/{id}', [MasterDataController::class, 'dokumen_getDataKategori']);
    Route::post('/master-data/dokumen/simpanKategori', [MasterDataController::class, 'dokumen_simpanKategori']);
    Route::post('/master-data/dokumen/hapusKategori', [MasterDataController::class, 'dokumen_hapusKategori']);
    // LKE Parameter
    Route::get('/master-data/lke_parameter', [MasterDataController::class, 'lke_parameter'])->name('lke_parameter');
    Route::get('/master-data/lke_parameter/getDatas', [MasterDataController::class, 'lke_parameter_getDatas']);
    Route::get('/master-data/lke_parameter/getData/{id}', [MasterDataController::class, 'lke_parameter_getData']);
    Route::get('/master-data/lke_parameter/getSubKomponen/{komponen_id}', [MasterDataController::class, 'lke_parameter_getSubKomponen']);
    Route::get('/master-data/lke_parameter/getIndikatorPengali/{komponen_id}', [MasterDataController::class, 'lke_parameter_getIndikatorPengali']);
    Route::post('/master-data/lke_parameter/simpan', [MasterDataController::class, 'lke_parameter_simpan']);
    Route::post('/master-data/lke_parameter/hapus', [MasterDataController::class, 'lke_parameter_hapus']);


    // Dokumen Upload
    Route::get('/dokumen', [DokumenController::class, 'index'])->name('dokumen');
    Route::get('/dokumen/getDatas', [DokumenController::class, 'getDatas']);
    Route::get('/dokumen/getData/{tahun}/{kategori_id}', [DokumenController::class, 'getData']);
    Route::post('/dokumen/simpan', [DokumenController::class, 'simpan']);
    Route::post('/dokumen/hapus', [DokumenController::class, 'hapus']);

    // RB General Perencanaan
    Route::get('/rencana_aksi/rb-general/perencanaan', [RBGeneralController::class, 'perencanaan'])->name('perencanaan');
    Route::get('/rencana_aksi/rb-general/perencanaan/getData/{kegiatan_utama_id}/{indikator_id}', [RBGeneralController::class, 'perencanaan_getData']);
    Route::get('/rencana_aksi/rb-general/perencanaan/getIndikator/{kegiatan_utama_id}/{indikator_id}', [RBGeneralController::class, 'perencanaan_getIndikator']);
    Route::post('/rencana_aksi/rb-general/perencanaan/simpanBaselineTarget', [RBGeneralController::class, 'perencanaan_simpanBaselineTarget']);
    Route::post('/rencana_aksi/rb-general/perencanaan/simpanBaseline', [RBGeneralController::class, 'perencanaan_simpanBaseline']);
    Route::post('/rencana_aksi/rb-general/perencanaan/hapusTarget', [RBGeneralController::class, 'perencanaan_hapusTarget']);
    Route::get('/rencana_aksi/rb-general/perencanaan/getTarget/{kegiatan_utama_id}/{indikator_id}/{target_id}', [RBGeneralController::class, 'perencanaan_getTarget']);
    Route::post('/rencana_aksi/rb-general/perencanaan/simpanTarget', [RBGeneralController::class, 'perencanaan_simpanTarget']);
    Route::post('/rencana_aksi/rb-general/perencanaan/simpanMonev', [RBGeneralController::class, 'perencanaan_simpanMonev']);
    Route::get('/rencana_aksi/rb-general/perencanaan/getDokumen/{id}', [RBGeneralController::class, 'perencanaan_getDokumen']);
    Route::post('/rencana_aksi/rb-general/perencanaan/simpanDokumen', [RBGeneralController::class, 'perencanaan_simpanDokumen']);
    // RB General Rencana Aksi
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi', [RBGeneralController::class, 'rencana_aksi'])->name('rencana_aksi');
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/downloadTemplate', [RBGeneralController::class, 'rencana_aksi_downloadTemplate']);
    Route::post('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/import', [RBGeneralController::class, 'rencana_aksi_import']);
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/getDatas', [RBGeneralController::class, 'rencana_aksi_getDatas']);
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/getData/{id}', [RBGeneralController::class, 'rencana_aksi_getData']);
    Route::post('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/simpan', [RBGeneralController::class, 'rencana_aksi_simpan']);
    Route::post('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/rencana_aksi/hapus', [RBGeneralController::class, 'rencana_aksi_hapus']);
    // RB General Evaluasi
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev', [RBGeneralController::class, 'monev'])->name('monev');
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev/getDatas', [RBGeneralController::class, 'rencana_aksi_getDatas']);
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev/getData/{id}', [RBGeneralController::class, 'rencana_aksi_getData']);
    Route::get('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev/getTarget', [RBGeneralController::class, 'monev_getTarget']);
    Route::post('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev/simpan', [RBGeneralController::class, 'monev_simpan']);
    Route::post('/rencana_aksi/rb-general/perencanaan/{perencanaan_id}/{target_id}/monev/simpanTarget', [RBGeneralController::class, 'monev_simpanTarget']);
    // RB General Rekap Data
    Route::get('/rencana_aksi/rb-general/rekap_data', [RBGeneralController::class, 'rekap_data']);
    Route::get('/rencana_aksi/rb-general/rekap_data/getTarget/{id}', [RBGeneralController::class, 'rekap_data_getTarget']);
    Route::post('/rencana_aksi/rb-general/rekap_data/simpanCatatanEvaluator', [RBGeneralController::class, 'rekap_data_simpanCatatanEvaluator']);
    // RB Tematik Sasaran Road Map
    Route::get('/rencana_aksi/rb-tematik/perencanaan', [RBTematikController::class, 'tema_sasaran'])->name('tema_sasaran');
    Route::get('/rencana_aksi/rb-tematik/perencanaan/getSasaran/{sasaran_id}', [RBTematikController::class, 'sasaran_getData']);
    Route::get('/rencana_aksi/rb-tematik/perencanaan/getData/{indikator_id}', [RBTematikController::class, 'indikator_getData']);
    Route::post('/rencana_aksi/rb-tematik/perencanaan/sasaran_roadmap/hapus/{sasaran_id}', [RBTematikController::class, 'sasaranRoadmapHapus']);
    Route::post('/rencana_aksi/rb-tematik/perencanaan/simpan-sasaran-roadmap', [RBTematikController::class, 'simpanSasaranRoadmap']);
    Route::post('/rencana_aksi/rb-tematik/perencanaan/simpan-indikator-roadmap', [RBTematikController::class, 'simpanIndikatorRoadmap']);
    Route::post('/rencana_aksi/rb-tematik/perencanaan/indikator_roadmap/hapus/{indikator_id}', [RBTematikController::class, 'indikatorRoadmapHapus']);
    Route::get('/rencana_aksi/rb-tematik/perencanaan/downloadTemplate', [RBTematikImportController::class, 'rbTematik_downloadTemplate']);
    Route::post('/rencana_aksi/rb-tematik/perencanaan/import', [RBTematikImportController::class, 'rbTematik_import']);
    // RB Tematik Permasalahan
    Route::get('/rencana_aksi/rb-tematik/permasalahan', [RBTematikController::class, 'permasalahan'])->name('permasalahan');
    Route::get('/rencana_aksi/rb-tematik/permasalahan/get-indikators-roadmap', [RBTematikController::class, 'getIndikatorsRoadmap'])->name('get_indikators_roadmap');
    Route::get('/rencana_aksi/rb-tematik/permasalahan/get-indikator-roadmap', [RBTematikController::class, 'getIndikatorRoadmap'])->name('get_indikator_roadmap');
    Route::post('/rencana_aksi/rb-tematik/permasalahan/simpan-permasalahan', [RBTematikController::class, 'simpanPermasalahan']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/get-permasalahan/{indikator_permasalahan_id}', [RBTematikController::class, 'get_permasalahan'])->name('get_permasalahan');
    Route::post('/rencana_aksi/rb-tematik/permasalahan/hapus/{permasalahan_id}', [RBTematikController::class, 'permasalahanHapus']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/get-indikator-permasalahan/{indikator_permasalahan_id}', [RBTematikController::class, 'get_indikator_permasalahan'])->name('get_indikator_permasalahan');
    Route::post('/rencana_aksi/rb-tematik/permasalahan/simpan-indikator-permasalahan', [RBTematikController::class, 'simpanIndikatorPermasalahan']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/indikator_permasalahan/hapus/{indikator_id}', [RBTematikController::class, 'indikatorPermasalahanHapus']);
    // RB Tematik Renaksi
    Route::get('/rencana_aksi/rb-tematik/permasalahan/renaksi/{indikator_id}', [RBTematikController::class, 'rencana_aksi'])->name('rencana_aksi_tematik');
    Route::get('/rencana_aksi/rb-tematik/permasalahan/renaksi/{indikator_id}/getDatas', [RBTematikController::class, 'rencana_aksi_getDatas']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/renaksi/getData/{renaksi_output_id}', [RBTematikController::class, 'rencana_aksi_getData']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/renaksi/{indikator_id}/simpan', [RBTematikController::class, 'rencana_aksi_simpan']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/renaksi/{renaksi_output_id}/hapus', [RBTematikController::class, 'rencana_aksi_hapus']);
    // RB Tematik MONEV
    Route::post('/rencana_aksi/rb-tematik/perencanaan/monev/simpan-indikator-roadmap', [RBTematikController::class, 'simpanMonevIndikatorRoadmap']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/monev/{indikator_id}', [RBTematikController::class, 'monev'])->name('monev_tematik');
    Route::get('/rencana_aksi/rb-tematik/permasalahan/monev/{indikator_id}/getDatas', [RBTematikController::class, 'rencana_aksi_getDatas']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/monev/getData/{renaksi_output_id}', [RBTematikController::class, 'rencana_aksi_getData']);
    Route::get('/rencana_aksi/rb-tematik/permasalahan/monev/{indikator_id}/getIndikator', [RBTematikController::class, 'monev_getIndikatorPermasalahan']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/monev/{indikator_id}/simpanIndikatorPermasalahan', [RBTematikController::class, 'monev_simpanIndikatorPermasalahan']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/monev/{indikator_id}/simpan', [RBTematikController::class, 'monev_simpan']);
    Route::post('/rencana_aksi/rb-tematik/permasalahan/monev/{renaksi_output_id}/hapus', [RBTematikController::class, 'monev_hapus']);

    // RB Tematik Rekap Data
    Route::get('/rencana_aksi/rb-tematik/rekap_data', [RBTematikController::class, 'rekap_data']);
    Route::get('/rencana_aksi/rb-tematik/rekap_data/getPerencanaan/{id}', [RBTematikController::class, 'rekap_data_getPerencanaan']);
    Route::post('/rencana_aksi/rb-tematik/rekap_data/simpanCatatanEvaluator', [RBTematikController::class, 'rekap_data_simpanCatatanEvaluator']);

    // Evaluasi
    Route::get('/evaluasi/renaksi-rb-general', [ERenaksiRBGeneralController::class, 'index']);
    Route::post('/evaluasi/renaksi-rb-general/save', [ERenaksiRBGeneralController::class, 'dosave']);
    Route::delete('/evaluasi/renaksi-rb-general/delete', [ERenaksiRBGeneralController::class, 'dodelete']);
    Route::get('/evaluasi/generate-evaluasi-renaksi-rb-general', [ERenaksiRBGeneralController::class, 'generateEvaluasiRBGenereal']);

    Route::get('/master-data/data-lke-renaksi', [DataLKERenaksiController::class, 'index']);
    Route::post('/master-data/data-lke-renaksi/save', [DataLKERenaksiController::class, 'dosave']);
    Route::delete('/master-data/data-lke-renaksi/delete', [DataLKERenaksiController::class, 'dodelete']);

    Route::get('/master-data/data-konversi-jawaban', [DataKonversiJawabanController::class, 'index']);
    Route::post('/master-data/data-konversi-jawaban/save', [DataKonversiJawabanController::class, 'dosave']);
    Route::delete('/master-data/data-konversi-jawaban/delete', [DataKonversiJawabanController::class, 'dodelete']);

    // LKE Utama
    Route::get('/evaluasi/lke-utama', [LKEController::class, 'lke_utama']);
    Route::get('/evaluasi/lke-utama/getDatas', [LKEController::class, 'lke_utama_getDatas']);
    Route::get('/evaluasi/lke-utama/{parameter_id}', [LKEController::class, 'lke_utama_score']);
    Route::get('/evaluasi/lke-utama/{parameter_id}/getDatas', [LKEController::class, 'lke_utama_score_getDatas']);
    Route::get('/evaluasi/lke-utama/{parameter_id}/downloadTemplate', [LKEController::class, 'lke_utama_score_downloadTemplate']);
    Route::post('/evaluasi/lke-utama/{parameter_id}/simpan', [LKEController::class, 'lke_utama_score_simpan']);
    Route::post('/evaluasi/lke-utama/{parameter_id}/import', [LKEController::class, 'lke_utama_score_import']);
    Route::get('/evaluasi/lke-utama/{parameter_id}/getData/{instansi_id}/{lke_bobot_id}', [LKEController::class, 'lke_utama_score_getData']);

    // Database
    Route::get('/evaluasi/database', [LKEController::class, 'database']);
    Route::get('/evaluasi/database/getDatas', [LKEController::class, 'database_getDatas']);

    // Hasil Evaluasi
    Route::get('/evaluasi/hasil-evaluasi', [LKEController::class, 'hasil_evaluasi']);
    Route::get('/evaluasi/hasil-evaluasi/getDatas', [LKEController::class, 'hasil_evaluasi_getDatas']);
    Route::get('/evaluasi/hasil-evaluasi/getKegiatan', [LKEController::class, 'hasil_evaluasi_getKegiatan']);
    Route::get('/evaluasi/hasil-evaluasi/{instansi_id}/{kegiatan_id}', [LKEController::class, 'hasil_evaluasi_instansi']);
    Route::post('/evaluasi/hasil-evaluasi/{instansi_id}/{kegiatan_id}/simpan', [LKEController::class, 'hasil_evaluasi_instansi_simpan']);
    Route::post(
    'evaluasi/hasil-evaluasi/{instansi}/{kegiatan}',
    fn () => view('evaluasi.hasil_evaluasi_instansi')
);


    // Hasil
    Route::get('/evaluasi/hasil-2023', [HasilController::class, 'hasil_seluruh'])->name('hasil_seluruh');
    Route::get('/evaluasi/hasil-2023/{KlpdInstansi}', [HasilController::class, 'hasil'])->name('hasil');
    Route::get('/evaluasi/hasil-2023/get_test_tp_line/{id}', [HasilController::class, 'get_test_tp_line']);
    Route::get('/evaluasi/hasil-2023/get_test_tp/{id}', [HasilController::class, 'get_test_tp']);
    Route::post('/evaluasi/hasil-2023/simpan_test_tp_line', [HasilController::class, 'simpan_test_tp_line']);
    Route::post('/evaluasi/hasil-2023/simpan_test_tp', [HasilController::class, 'simpan_test_tp']);
    // Access
    Route::get('/access', [HasilController::class, 'access'])->name('access');
    Route::post('/access/simpan', [HasilController::class, 'access_simpan']);

    // Activity Log
    Route::get('/activitylog', [HomeController::class, 'activitylog'])->name('activitylog');
    Route::get('/activitylog/getData', [HomeController::class, 'activitylog_getData']);
    // Kelola user
    Route::get('/manage-user', [ManageUserController::class, 'index'])->name('index');
    Route::get('/manage-user/getDatas', [ManageUserController::class, 'manage_user_getDatas']);
    Route::get('/manage-user/getData/{id}', [ManageUserController::class, 'manage_user_getData']);
    Route::post('/manage-user/simpan', [ManageUserController::class, 'manage_user_simpan']);
    Route::post('/manage-user/hapus', [ManageUserController::class, 'manage_user_hapus']);
    // Kelola Tim
    Route::get('/kelola-tim', [ManageTimController::class, 'kelola_tim'])->name('kelola_tim');
    Route::post('/kelola-tim/simpan', [ManageTimController::class, 'kelola_tim_simpan'])->name('kelola_tim_simpan');
    Route::get('/kelola-tim/getDatas', [ManageTimController::class, 'tim_evaluasi_getDatas'])->name('getData_tim');
    Route::get('/kelola-tim/getData/{id}', [ManageTimController::class, 'tim_getData']);
    Route::post('/kelola-tim/hapus', [ManageTimController::class, 'kelola_tim_hapus'])->name('kelola_tim_hapus');
    #Kelola Anggota Tim
    Route::get('/kelola-anggota-tim', [ManageTimController::class, 'kelola_anggota_tim'])->name('kelola_anggota_tim');
    Route::post('/kelola-anggota-tim/simpan', [ManageTimController::class, 'kelola_anggota_tim_simpan'])->name('kelola_anggota_tim_simpan');
    Route::get('/kelola-anggota-tim/getDatas', [ManageTimController::class, 'anggota_tim_evaluasi_getDatas'])->name('getData_anggotaTim');
    Route::get('/kelola-anggota-tim/getData/{id}', [ManageTimController::class, 'anggota_tim_getData']);
    Route::post('/kelola-anggota-tim/hapus', [ManageTimController::class, 'kelola_anggota_tim_hapus'])->name('kelola_anggota_tim_hapus');
    #Kelola Unit Tim
    Route::get('/kelola-instansi-tim', [ManageTimController::class, 'kelola_instansi_tim'])->name('kelola_instansi_tim');
    Route::post('/kelola-instansi-tim/simpan', [ManageTimController::class, 'kelola_instansi_tim_simpan'])->name('kelola_instansi_tim_simpan');
    Route::get('/kelola-instansi-tim/getDatas', [ManageTimController::class, 'instansi_tim_evaluasi_getDatas'])->name('getData_instansiTim');
    Route::get('/kelola-instansi-tim/getData/{id}', [ManageTimController::class, 'instansi_tim_getData']);
    Route::post('/kelola-instansi-tim/hapus', [ManageTimController::class, 'kelola_instansi_tim_hapus'])->name('kelola_instansi_tim_hapus');

    #generate indeks RB simple version buat kebutuhan satu data dakip
    Route::get('/generate/hasil1data/', [GenerateController::class, 'generate_simple'])->name('generete_rb_simple_version');
    Route::get('/generate/hasilrb2023/', [GenerateController::class, 'generateRB2023'])->name('generete_rb_simple_version');
    Route::post('/evaluasi/sanggah', [LkeController::class, 'simpanSanggah'])->name('evaluasi.sanggah.simpan');
    Route::post('/sanggah/simpan', [LKEController::class, 'simpanSanggah'])->name('sanggah.simpan');
    Route::post('evaluasi/sanggah/simpan', [EvaluasiController::class, 'simpanSanggah']);
    Route::post(
    'evaluasi/update-sanggah-status',
    [EvaluasiController::class, 'updateSanggahStatus']);


    Route::get('evaluasi/dev-sanggah/{tpLineId}', [EvaluasiController::class, 'devGetSanggah']);
    Route::post('evaluasi/dev-sanggah/update', [EvaluasiController::class, 'devUpdateSanggah']);

    

    Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [WebDashboardController::class, 'index'])->name('dashboard');
    Route::post('/dashboard/filter-rb', [WebDashboardController::class, 'filterRB'])->name('dashboard.filter.rb');
    Route::get('/rb/detail/instansi', [WebDashboardController::class, 'detailInstansiRB'])->name('rb.detail.instansi');
});
});


require __DIR__ . '/auth.php';
