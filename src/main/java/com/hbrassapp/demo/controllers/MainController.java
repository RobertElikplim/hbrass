package com.hbrassapp.demo.controllers;

import com.hbrassapp.demo.Models.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;


@Controller
public class MainController {

    @Autowired
    employeerepo employeeRepo;
    @Autowired
    BrokerCompany brokerCompanyRepo;
    @Autowired
    BrokerContractRepo brokerContractRepo;
    @Autowired
    BrokerInfoRepo brokerInfoRepo;
    @Autowired
    ClientRepo clientRepo;
    @Autowired
    CountryRepo countryRepo;
    @Autowired
    DotInspectionRepo dotInspectionRepo;
    @Autowired
    DropOffLocation dropOffLocationRepo;
    @Autowired
    EmergencyContactRepo emergencyContactRepo;
    @Autowired
    employeerepo employeerepo;
    @Autowired
    EmployeeStatusRepo employeeStatusRepo;
    @Autowired
    IFTA_StickerRepo ifta_stickerRepo;
    @Autowired
    IncomeRepo incomeRepo;
    @Autowired
    InsuranceRepo insuranceRepo;
    @Autowired
    InvoiceRepo invoiceRepo;
    @Autowired
    InvoiceStatusRepo invoiceStatusRepo;
    @Autowired
    LoadBoardRepo loadBoardRepo;
    @Autowired
    LoadsRepo loadsRepo;
    @Autowired
    MaintenanceRepo maintenanceRepo;
    @Autowired
    MiscellaneousRepo miscellaneousRepo;
    @Autowired
    OfficePositionRepo officePositionRepo;
    @Autowired
    PayrollRepo payrollRepo;
    @Autowired
    PickUpLocationRepo pickUpLocationRepo;
    @Autowired
    ScheduleRepo scheduleRepo;
    @Autowired
    StatesRepo statesRepo;
    @Autowired
    SystemLoginRepo systemLoginRepo;
    @Autowired
    TireRepo tireRepo;
    @Autowired
    TireVendorRepo tireVendorRepo;
    @Autowired
    TrailerRepo trailerRepo;
    @Autowired
    TripExpenseRepo tripExpenseRepo;
    @Autowired
    TruckDriverRepo truckDriverRepo;
    @Autowired
    TruckRepo truckRepo;
    @Autowired
    TruckLogRepo truckLogRepo;
    @Autowired
    VendorRepo vendorRepo;


    @RequestMapping(value = "/tables")
    public ModelAndView viewTables() {
        ModelAndView mv = new ModelAndView("tables");
        return mv;
    }

    @RequestMapping(value = "/brokerCompany")
    public ModelAndView viewBrokerCompany() {
        ModelAndView mv = new ModelAndView("brokerCompany");
        mv.addObject("brokerCompanyList", brokerCompanyRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerContracts")
    public ModelAndView viewContracts() {
        ModelAndView mv = new ModelAndView("brokerContracts");
        mv.addObject("brokerContractList", brokerContractRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerInfo")
    public ModelAndView viewBrokerInfo() {
        ModelAndView mv = new ModelAndView("brokerInfo");
        mv.addObject("brokerInfoList", brokerInfoRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/client")
    public ModelAndView viewClient() {
        ModelAndView mv = new ModelAndView("client");
        mv.addObject("clientList", clientRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/country")
    public ModelAndView viewCountry() {
        ModelAndView mv = new ModelAndView("country");
        mv.addObject("countryList", countryRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/dotInspection")
    public ModelAndView viewDotInspection() {
        ModelAndView mv = new ModelAndView("dotInspection");
        mv.addObject("dotInspectionList", dotInspectionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/dropOffLocation")
    public ModelAndView viewDropOffLocation() {
        ModelAndView mv = new ModelAndView("dropOffLocation");
        mv.addObject("dropOffLocationList", dropOffLocationRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/emergencyContacts")
    public ModelAndView viewemergencyContacts() {
        ModelAndView mv = new ModelAndView("emergencyContacts");
        mv.addObject("emergencyContactsList", emergencyContactRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/employee")
    public ModelAndView viewEmployee() {
        ModelAndView mv = new ModelAndView("employee");
        mv.addObject("employeeList", employeeRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/employeeStatus")
    public ModelAndView viewemployeeStatus() {
        ModelAndView mv = new ModelAndView("employeeStatus");
        mv.addObject("employeeStatusList", employeeStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/iftaSticker")
    public ModelAndView viewiftaSticker() {
        ModelAndView mv = new ModelAndView("iftaSticker");
        mv.addObject("iftaStickerList", ifta_stickerRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/income")
    public ModelAndView viewincome() {
        ModelAndView mv = new ModelAndView("income");
        mv.addObject("incomeList", incomeRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/insurance")
    public ModelAndView viewinsurance() {
        ModelAndView mv = new ModelAndView("insurance");
        mv.addObject("insuranceList", insuranceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/invoice")
    public ModelAndView viewinvoice() {
        ModelAndView mv = new ModelAndView("invoice");
        mv.addObject("invoiceList", invoiceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/invoiceStatus")
    public ModelAndView viewinvoiceStatus() {
        ModelAndView mv = new ModelAndView("invoiceStatus");
        mv.addObject("invoiceStatusList", invoiceStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/loadBoard")
    public ModelAndView viewloadBoard() {
        ModelAndView mv = new ModelAndView("loadBoard");
        mv.addObject("loadBoardList", loadBoardRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/loads")
    public ModelAndView viewLoads() {
        ModelAndView mv = new ModelAndView("loads");
        mv.addObject("loadsList", loadsRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/maintenance")
    public ModelAndView viewmaintenance() {
        ModelAndView mv = new ModelAndView("maintenance");
        mv.addObject("maintenanceList", maintenanceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/miscellaneous")
    public ModelAndView viewmiscellaneous() {
        ModelAndView mv = new ModelAndView("miscellaneous");
        mv.addObject("miscellaneousList", miscellaneousRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/officePosition")
    public ModelAndView viewofficePosition() {
        ModelAndView mv = new ModelAndView("officePosition");
        mv.addObject("officePositionList", officePositionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/payroll")
    public ModelAndView viewpayroll() {
        ModelAndView mv = new ModelAndView("payroll");
        mv.addObject("payrollList", payrollRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/puLocation")
    public ModelAndView viewpuLocation() {
        ModelAndView mv = new ModelAndView("puLocation");
        mv.addObject("puLocationList", pickUpLocationRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/schedule")
    public ModelAndView viewschedule() {
        ModelAndView mv = new ModelAndView("schedule");
        mv.addObject("scheduleList", scheduleRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/states")
    public ModelAndView viewstates() {
        ModelAndView mv = new ModelAndView("states");
        mv.addObject("statesList", statesRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/tire")
    public ModelAndView viewtire() {
        ModelAndView mv = new ModelAndView("tire");
        mv.addObject("tireList", tireRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/tireVendor")
    public ModelAndView viewtireVendor() {
        ModelAndView mv = new ModelAndView("tireVendor");
        mv.addObject("tireVendorList", tireVendorRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Trailer")
    public ModelAndView viewtrailer() {
        ModelAndView mv = new ModelAndView("Trailer");
        mv.addObject("trailerList", trailerRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/TripExpense")
    public ModelAndView viewtripExpense() {
        ModelAndView mv = new ModelAndView("TripExpense");
        mv.addObject("tripExpenseList", tripExpenseRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Truck")
    public ModelAndView viewtruck() {
        ModelAndView mv = new ModelAndView("Truck");
        mv.addObject("truckList", truckRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/truckDriver")
    public ModelAndView viewtruckDriver() {
        ModelAndView mv = new ModelAndView("truckDriver");
        mv.addObject("truckdriverList", truckDriverRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/trucklog")
    public ModelAndView viewtruckLog() {
        ModelAndView mv = new ModelAndView("trucklog");
        mv.addObject("trucklogList", truckLogRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Vendors")
    public ModelAndView viewvendor() {
        ModelAndView mv = new ModelAndView("Vendors");
        mv.addObject("vendorList", vendorRepo.findAll());
        return mv;
    }

    // BROKER COMPANY

    @RequestMapping(value = "/editBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerCompany");

        Optional<Broker_Company> brokerCompanyRecord = brokerCompanyRepo.findById(id);
        Broker_Company brokerCompany = brokerCompanyRecord.get();
        mv.addObject("Broker_Company", brokerCompany);
        return mv;
    }

    @RequestMapping(value = "/submitBrokerCompany", method = RequestMethod.POST)
    public ModelAndView changesBrokerCompany(@RequestParam("brokerID") String id, @RequestParam("brokerName") String brokerName, @RequestParam("streetAddress") String streetAddress,
                                             @RequestParam("stateCode") String stateCode, @RequestParam("zipCode") String zipCode, @RequestParam("phoneNumber") String phoneNumber,
                                             @RequestParam("email") String email) {
        ModelAndView mv = new ModelAndView("redirect:/brokerCompany");

        Broker_Company brokerCompany = new Broker_Company();
        if (id.isEmpty()) {
            brokerCompany.setBroker_Name(brokerName);
            brokerCompany.setStreet_Address(streetAddress);
            brokerCompany.setState_Code(stateCode);
            brokerCompany.setZip_Code(zipCode);
            brokerCompany.setPhone_Number(phoneNumber);
            brokerCompany.setEmail_Address(email);
            brokerCompanyRepo.save(brokerCompany);
        } else {
            brokerCompany.setBroker_ID(id);
            brokerCompany.setBroker_Name(brokerName);
            brokerCompany.setStreet_Address(streetAddress);
            brokerCompany.setState_Code(stateCode);
            brokerCompany.setZip_Code(zipCode);
            brokerCompany.setPhone_Number(phoneNumber);
            brokerCompany.setEmail_Address(email);
            brokerCompanyRepo.save(brokerCompany);
        }
        return mv;
    }

    @RequestMapping(value = "/addBrokerCompany")
    public ModelAndView addBrokerCompany() {
        ModelAndView mv = new ModelAndView("addBrokerCompany");
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerCompany");
        brokerCompanyRepo.deleteById(id);
        return mv;
    }

    //BROKER CONTRACTS

    @RequestMapping(value = "/editBrokerContracts/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerContracts(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerContracts");

        Optional<Broker_Contract> brokerContractRecord = brokerContractRepo.findById(id);
        Broker_Contract brokerContract = brokerContractRecord.get();
        mv.addObject("brokerCompanyList", brokerCompanyRepo.findAll());
        mv.addObject("Broker_Contract", brokerContract);
        return mv;
    }

    @RequestMapping(value = "/submitBrokerContract", method = RequestMethod.POST)
    public ModelAndView changesBrokerContract(@RequestParam("contractID") String contractID, @RequestParam("invoiceID") String invoiceID, @RequestParam("brokerID") String brokerID,
                                              @RequestParam("rate") String rate, @RequestParam("fare") String fare, @RequestParam("commission") String commission,
                                              @RequestParam("contractStatus") String status) {

        ModelAndView mv = new ModelAndView("redirect:/brokerContracts");

        Broker_Contract brokerContract = new Broker_Contract();

        if (contractID.isEmpty()) {
            brokerContract.setInvoice_ID(invoiceID);
            brokerContract.setBroker_ID(brokerID);
            brokerContract.setRate(rate);
            brokerContract.setFare(fare);
            brokerContract.setCommission(commission);
            brokerContract.setContract_Status(status);
            brokerContractRepo.save(brokerContract);

        } else {
            brokerContract.setBroker_Contract_ID(contractID);
            brokerContract.setInvoice_ID(invoiceID);
            brokerContract.setBroker_ID(brokerID);
            brokerContract.setRate(rate);
            brokerContract.setFare(fare);
            brokerContract.setCommission(commission);
            brokerContract.setContract_Status(status);
            brokerContractRepo.save(brokerContract);

        }
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerContract/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerContract(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerContracts");
        brokerContractRepo.deleteById(id);
        return mv;
    }

    //Broker Info

    @RequestMapping(value = "/editBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerInfo");

        Optional<Broker_Info> brokerInfoRecord = brokerInfoRepo.findById(id);
        Broker_Info brokerInfo = brokerInfoRecord.get();
        mv.addObject("Broker_Info", brokerInfo);
        return mv;
    }

    @RequestMapping(value = "/submitBrokerInfo", method = RequestMethod.POST)
    public ModelAndView submitBrokerInfo(@RequestParam("contactID") String contactID, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
                                            @RequestParam("email") String email, @RequestParam("phoneNumber") String phoneNumber, @RequestParam("brokerID") String brokerID)
    {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        Broker_Info brokerInfo = new Broker_Info();
        if (contactID.isEmpty()) {
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfoRepo.save(brokerInfo);
        }
        else {
            brokerInfo.setContact_ID(contactID);
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfoRepo.save(brokerInfo);
        }
        return mv;

    }

    @RequestMapping(value = "/addBrokerInfo")
    public ModelAndView addBrokerInfo() {
        ModelAndView mv = new ModelAndView("addBrokerInfo");
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        brokerInfoRepo.deleteById(id);
        return mv;
    }

    //Client

    @RequestMapping(value = "/editClient/{id}", method = RequestMethod.GET)
    public ModelAndView editClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editClient");
        Optional<Client> clientInfoRecord = clientRepo.findById(id);
        Client client = clientInfoRecord.get();
        mv.addObject("Client", client);
        return mv;
    }

    @RequestMapping(value = "/submitClient", method = RequestMethod.POST)
    public ModelAndView submitClient(@RequestParam("clientID") String clientID, @RequestParam("clientName") String clientName,@RequestParam("streetAddress") String streetAddress,
                                     @RequestParam("city")String city, @RequestParam("stateCode") String stateCode, @RequestParam("zipCode") String zipCode,
                                     @RequestParam("phoneNumber") String phoneNumber, @RequestParam("email") String email) {
        ModelAndView mv = new ModelAndView("redirect:/client");
        Client client = new Client();
        if (clientID.isEmpty()) {
            client.setClient_Name(clientName);
            client.setStreet_Address(streetAddress);
            client.setCity(city);
            client.setState_Code(stateCode);
            client.setZip_Code(zipCode);
            client.setPhone_Number(phoneNumber);
            client.setEmail(email);
            clientRepo.save(client);
        }
        else {
            client.setClient_ID(clientID);
            client.setClient_Name(clientName);
            client.setStreet_Address(streetAddress);
            client.setCity(city);
            client.setState_Code(stateCode);
            client.setZip_Code(zipCode);
            client.setPhone_Number(phoneNumber);
            client.setEmail(email);
            clientRepo.save(client);
        }

        return mv;
    }

    @RequestMapping(value = "/addClient")
    public ModelAndView addClient() {
        ModelAndView mv = new ModelAndView("addClient");
        return mv;
    }

    @RequestMapping(value = "/deleteClient/{id}", method = RequestMethod.GET)
    public ModelAndView deleteClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/client");
        try {
            clientRepo.deleteById(id);
        }
        catch (Exception ex) {

            }
        return mv;

    }


}
