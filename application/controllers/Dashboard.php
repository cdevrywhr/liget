<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();

		is_login();

		$this->data['company_data']    				= $this->Company_model->company_profile();
		$this->data['layout_template']    			= $this->Template_model->layout();
		$this->data['skins_template']     			= $this->Template_model->skins();
	}

	public function index()
	{
		$this->data['page_title'] = 'Dashboard';

		//
		$this->data['get_total_menu']     		= $this->Menu_model->total_rows();
		$this->data['get_total_submenu']     	= $this->Submenu_model->total_rows();
		$this->data['get_total_user']     		= $this->Auth_model->total_rows();
		$this->data['get_total_usernow']     	= $this->Auth_model->total_rowsnow();
		$this->data['get_total_usertype']     	= $this->Usertype_model->total_rows();

		$this->load->model('Proposal_model');
		$this->data['get_total_persetujuan'] 	= $this->Proposal_model->total_rowsacc();
		$this->load->model('Proposal_model');
		$this->data['get_total_pengembalian']	= $this->Proposal_model->total_rowsrej();
		$this->load->model('Proposal_model');
		$this->data['get_total_proposal']			= $this->Proposal_model->total_rows();
		$this->load->model('Proposal_model');
		$this->data['get_total_sedangproses']			= $this->Proposal_model->total_rowswaiting();



		$this->load->model('PD_model');
		$this->data['get_total_pd']			= $this->PD_model->total_rows();

		$this->load->view('back/dashboard/body', $this->data);
	}
}
