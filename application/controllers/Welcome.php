<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
			parent::__construct();
			//untuk bikin dari view manggil model 'My_Model.php'
			$this->load->model('model');
	}

	public function index() { 
		//$data = $this->model->getData('tt_barang');
		//$this->load->view('home', array('data' => $data)); 
		$this->load->view('user/header');
		$this->load->view('user/container');
		$this->load->view('user/top');
		$this->load->view('user/portofolio');
		$this->load->view('user/kontak');
		$this->load->view('user/footer');
	}

	public function clickCounter($id)
    {
        $this->news_model->set_counter($id);
    }

	public function isi_signup(){
		$tanggal_lahir = $this->input->post('thn_lahir').'-'.$this->input->post('bln_lahir').'-'.$this->input->post('tgl_lahir');
		$checkEmail = $this->model->check('email', $this->input->post('email'), 'tt_user');
		$checkUsername = $this->model->check('username', $this->input->post('username'), 'tt_user');
		if($checkUsername == false && $checkEmail == false)
		{
			$arrIsiRegis = array(
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
				'nama' => $this->input->post('nama'),
				'email' => $this->input->post('email'),
				'no_hp' => $this->input->post('no_hp'),
				'jenis_kelamin' => $this->input->post('jenis_kelamin'),
				'tanggal_lahir' => $this->input->post('tanggal_lahir'),
				'privileges' => 0
			);
			$qryI = $this->model->createRegist($arrIsiRegis);
			if ($qryI >= 1) $this->load->view('user/formLogin');
		}
		else { 
			$this->session->set_flashdata('pesan', 'user / pass ilegal !');
			echo "<script>alert('Username/Password Anda Salah')</script>";
			$this->load->view('user/formLogin');
		}
	}

	public function buka_cp() { 
		$data = $this->model->getData('tt_cara_pesan');
		$this->load->view('cara_pesan', array('data' => $data));
	}
	
	public function buka_faq() { 
		$data = $this->model->getData('tt_faq');
		$this->load->view('faq', array('data' => $data)); 
	}
}