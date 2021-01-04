<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Gejala_model');
        $this->load->model('Penyakit_model');
    }

    public function index()
    {
        $data['user'] = $this->db->get_where('users', ['email' => $this->session->userdata('email')])->row_array();

        $gejala = $this->Gejala_model->getGejala();
        $penyakit = $this->Penyakit_model->getOnlyPenyakit();
        $hama = $this->Penyakit_model->getOnlyHama();
        
        $data = [
            'subtitle'  => "Dashboard",
            'gejala' => $gejala,
            'penyakit' => $penyakit,
            'hama' => $hama,
            'isi'   =>  "admin/dashboard/list"
        ];

        $this->load->view('admin/layout/wrapper', $data, FALSE);
    }

}

/* End of file Dashboard.php */
