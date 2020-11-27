<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		is_logged_in();
		if ($this->session->userdata('level') != 'admin') :
			redirect('Auth/BlockedController');
		endif;
		$this->load->model('Pengaduan_m');
	}

	// List all your items
	public function index()
	{
		$data['title'] = 'Generate Laporan';
		$data['laporan'] = $this->Pengaduan_m->laporan_pengaduan()->result_array();

		$this->load->view('_part/backend_head', $data);
		$this->load->view('_part/backend_sidebar_v');
		$this->load->view('_part/backend_topbar_v');
		$this->load->view('admin/generate_laporan');
		$this->load->view('_part/backend_footer_v');
		$this->load->view('_part/backend_foot');
	}

	public function generate_laporan()
	{
	
	$filename='laporan-pengaduan-'.date('d-m-Y').'.pdf';

	$data['laporan'] = $this->Pengaduan_m->laporan_pengaduan()->result_array();

    $this->load->library('pdf');

    $this->pdf->setPaper('A4', 'landscape');
    $this->pdf->filename = $filename;
    $this->pdf->load_view('laporan_pdf', $data);
	}
}

/* End of file LaporanController.php */
/* Location: ./application/controllers/Admin/LaporanController.php */
