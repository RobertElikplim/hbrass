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
import java.util.UUID;


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
    IncidentRepo incidentRepo;
    @Autowired
    IncidentStatusRepo incidentStatusRepo;
    @Autowired
    IncidentTypeRepo incidentTypeRepo;
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


    //Methods to display pages
    @RequestMapping("/")
    public ModelAndView view(){
        ModelAndView mv = new ModelAndView("signin");
        mv.addObject("thelist",systemLoginRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/signup")
    public ModelAndView register(){
        ModelAndView mv = new ModelAndView("signup");
        return mv;
    }

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

    @RequestMapping(value = "/incident")
    public ModelAndView viewincident()
    {
        ModelAndView mv = new ModelAndView("incident");
        mv.addObject("incidentList", incidentRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incidentStatus")
    public ModelAndView viewincidentStatus()
    {
        ModelAndView mv = new ModelAndView("incidentStatus");
        mv.addObject("incidentStatusList", incidentStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incidentType")
    public ModelAndView viewincidentType()
    {
        ModelAndView mv = new ModelAndView("incidentType");
        mv.addObject("incidentTypeList", incidentTypeRepo.findAll());
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
    public ModelAndView changesBrokerCompany(@RequestParam("brokerID") String id,
                                             @RequestParam("brokerName") String brokerName,
                                             @RequestParam("streetAddress") String streetAddress,
                                             @RequestParam("stateCode") String stateCode,
                                             @RequestParam("zipCode") String zipCode,
                                             @RequestParam("phoneNumber") String phoneNumber,
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

    @RequestMapping(value = "/addLoads", method = RequestMethod.POST)
    public ModelAndView changesLoads(@RequestParam("loadID") String id,
                                     @RequestParam("dateLoads") String dateLoads,
                                     @RequestParam("pickUP") String pickUP,
                                     @RequestParam("dropOff") String dropOff,
                                     @RequestParam("vinNumber") String vinNumber,
                                     @RequestParam("trailerID") String trailerID,
                                     @RequestParam("driverID") String driverID,
                                     @RequestParam("deadHD") String deadHD,
                                     @RequestParam("loadedMiles") String loadedMiles,
                                     @RequestParam("totalMiles") String totalMiles,
                                     @RequestParam("driverPay") String driverPay,
                                     @RequestParam("remarks") String remarks) {
        ModelAndView mv = new ModelAndView("redirect:/loads");
        Loads loads = new Loads();
        if (id.isEmpty()) {
            loads.setDate(dateLoads);
            loads.setPick_Up_ID(pickUP);
            loads.setDrop_Off_ID(dropOff);
            loads.setTruck_ID_VIN(vinNumber);
            loads.setTrailer_ID(trailerID);
            loads.setDriver_ID(driverID);
            loads.setDead_Head(deadHD);
            loads.setLoaded_Miles(loadedMiles);
            loads.setTotal_Miles(totalMiles);
            loads.setDriver_Pay(driverPay);
            loads.setRemarks(remarks);
            loadsRepo.save(loads);
        } else {
            loads.setLoad_ID(id);
            loads.setDate(dateLoads);
            loads.setPick_Up_ID(pickUP);
            loads.setDrop_Off_ID(dropOff);
            loads.setTruck_ID_VIN(vinNumber);
            loads.setTrailer_ID(trailerID);
            loads.setDriver_ID(driverID);
            loads.setDead_Head(deadHD);
            loads.setLoaded_Miles(loadedMiles);
            loads.setTotal_Miles(totalMiles);
            loads.setDriver_Pay(driverPay);
            loads.setRemarks(remarks);
            loadsRepo.save(loads);
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
    public ModelAndView changesBrokerContract(@RequestParam("contractID") String contractID,
                                              @RequestParam("invoiceID") String invoiceID,
                                              @RequestParam("brokerID") String brokerID,
                                              @RequestParam("rate") String rate,
                                              @RequestParam("fare") String fare,
                                              @RequestParam("commission") String commission,
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
    public ModelAndView submitBrokerInfo(@RequestParam("contactID") String contactID,
                                         @RequestParam("firstName") String firstName,
                                         @RequestParam("lastName") String lastName,
                                         @RequestParam("email") String email,
                                         @RequestParam("phoneNumber") String phoneNumber,
                                         @RequestParam("brokerID") String brokerID)
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
    public ModelAndView submitClient(@RequestParam("clientID") String clientID,
                                     @RequestParam("clientName") String clientName,
                                     @RequestParam("streetAddress") String streetAddress,
                                     @RequestParam("city")String city,
                                     @RequestParam("stateCode") String stateCode,
                                     @RequestParam("zipCode") String zipCode,
                                     @RequestParam("phoneNumber") String phoneNumber,
                                     @RequestParam("email") String email) {
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

    @RequestMapping(value = "/deleteIncome/{id}", method = RequestMethod.GET)
    public ModelAndView deleteIncome(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/income");
        incomeRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOL(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dropOffLocation");
        dropOffLocationRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/deleteMiscellaneous/{id}", method = RequestMethod.GET)
    public ModelAndView deleteMisc(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/miscellaneous");
        miscellaneousRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/deleteDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOT(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dotInspection");
        dotInspectionRepo.deleteById(id);
        return mv;
    }

    @RequestMapping(value = "/submitIncome", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("incomeID") String incomeID,
                                  //@RequestParam("loadID") String loadID,
                                  @RequestParam("loadFare") String loadFare,
                                  @RequestParam("commission") String commission,
                                  @RequestParam("insurance") String insurance,
                                  //@RequestParam("tripExpenseID") String tripExpenseID,
                                  @RequestParam("totalIncome") String totalIncome) {
        ModelAndView mv = new ModelAndView("redirect:/income");
        Income income = new Income();
        if (incomeID.isEmpty()) {
           // income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
           // income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            incomeRepo.save(income);
        } else {
            income.setIncome_ID(incomeID);
            //income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
            //income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            incomeRepo.save(income);
        }
        return mv;
    }
    @RequestMapping(value = "/submitDotInspection", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("dotInspectionID") String dotInspectionID,
                                  @RequestParam("vin") String vin,
                                  @RequestParam("cDate") String cDate,
                                  @RequestParam("eDate") String eDate) {
        ModelAndView mv = new ModelAndView("redirect:/dotInspection");
        Dot_Inspection dinspection = new Dot_Inspection();
        if (dotInspectionID.isEmpty()) {
            dinspection.setTruck_ID_VIN(vin);
            dinspection.setDot_Certification_Date(cDate);
            dinspection.setDot_Expiration_Date(eDate);
            dotInspectionRepo.save(dinspection);
        } else {
            dinspection.setDot_Inspection_ID(dotInspectionID);
            dinspection.setTruck_ID_VIN(vin);
            dinspection.setDot_Certification_Date(cDate);
            dinspection.setDot_Expiration_Date(eDate);
            dotInspectionRepo.save(dinspection);
        }
        return mv;
    }
    @RequestMapping(value = "/submitMisc", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("miscID") String miscID,
                                  @RequestParam("cost") String cost,
                                  @RequestParam("desc") String desc) {
        ModelAndView mv = new ModelAndView("redirect:/miscellaneous");
        Miscellaneous misc = new Miscellaneous();
        if (miscID.isEmpty()) {
            misc.setCost(cost);
            misc.setDescription(desc);
            miscellaneousRepo.save(misc);
        } else {
            misc.setMiscellaneous_ID(miscID);
            misc.setCost(cost);
            misc.setDescription(desc);
            miscellaneousRepo.save(misc);
        }
        return mv;
    }
    @RequestMapping(value = "/submitDOL", method = RequestMethod.POST)
    public ModelAndView addDropOffLocation(@RequestParam("dropOffID") String dropOffID,
                                  @RequestParam("tCode") String tCode,
                                  @RequestParam("dDate") String dDate,
                                  @RequestParam("sAddy") String sAddy,
                                  @RequestParam("dCity") String dCity,
                                  @RequestParam("sCode") String sCode,
                                  @RequestParam("zCode") String zCode) {
        ModelAndView mv = new ModelAndView("redirect:/dropOffLocation");
        Drop_Off_Location dol = new Drop_Off_Location();
        if (dropOffID.isEmpty()) {
            dol.setDrop_Off_Tracker_Code(tCode);
            dol.setDrop_Off_Date(dDate);
            dol.setStreet_Address(sAddy);
            dol.setCity(dCity);
            dol.setState_Code(sCode);
            dol.setZip_Code(zCode);
            dropOffLocationRepo.save(dol);
        } else {
            dol.setDrop_Off_ID(dropOffID);
            dol.setDrop_Off_Tracker_Code(tCode);
            dol.setDrop_Off_Date(dDate);
            dol.setStreet_Address(sAddy);
            dol.setCity(dCity);
            dol.setState_Code(sCode);
            dol.setZip_Code(zCode);
            dropOffLocationRepo.save(dol);
        }
        return mv;
    }
    @RequestMapping(value = "/submitMaintenance", method = RequestMethod.POST)
    public ModelAndView addMaintenance(@RequestParam("MaintenanceID") String MaintenanceID,
                                           @RequestParam("Mileage") String Mileage,
                                           @RequestParam("ServiceDate") String ServiceDate,
                                           @RequestParam("Service") String Service,
                                           @RequestParam("ServiceFee") String ServiceFee,
                                           @RequestParam("TruckIdVin") String TruckIdVin)
            {
        ModelAndView mv = new ModelAndView("redirect:/maintenance");
        Maintenance maintenance = new Maintenance();
        if (MaintenanceID.isEmpty()) {
            maintenance.setMileage(Mileage);
            maintenance.setServiceDate(ServiceDate);
            maintenance.setService(Service);
            maintenance.setServiceFee(ServiceFee);
            maintenance.setTruckIDVIN(TruckIdVin);
            maintenanceRepo.save(maintenance);
        } else {
            maintenance.setMaintenanceID(MaintenanceID);
            maintenance.setMileage(Mileage);
            maintenance.setServiceDate(ServiceDate);
            maintenance.setService(Service);
            maintenance.setServiceFee(ServiceFee);
            maintenance.setTruckIDVIN(TruckIdVin);
            maintenanceRepo.save(maintenance);
        }
        return mv;
    }

    @RequestMapping(value = "/submitPickUpLocation", method = RequestMethod.POST)
    public ModelAndView addPickUpLocation(@RequestParam("PickUpLocationID") String PickUpLocationID,
                                       @RequestParam("PickUpTrackerCode") String PickUpTrackerCode,
                                       @RequestParam("PickUpDate") String PickUpDate,
                                       @RequestParam("StreetAddress") String StreetAddress,
                                       @RequestParam("City") String City,
                                          @RequestParam("StateCode") String StateCode,
                                       @RequestParam("Zipcode") String Zipcode) {
        ModelAndView mv = new ModelAndView("redirect:/puLocation");
        Pick_Up_location pul = new Pick_Up_location();
        if (PickUpLocationID.isEmpty()) {
            pul.setPuTrackerCode(PickUpTrackerCode);
            pul.setPuDate(PickUpDate);
            pul.setStreetAddress(StreetAddress);
            pul.setCity(City);
            pul.setStateCode(StateCode);
            pul.setZipCode(Zipcode);
            pickUpLocationRepo.save(pul);
        } else {
            pul.setPickUpID(PickUpLocationID);
            pul.setPuTrackerCode(PickUpTrackerCode);
            pul.setPuDate(PickUpDate);
            pul.setStreetAddress(StreetAddress);
            pul.setCity(City);
            pul.setStateCode(StateCode);
            pul.setZipCode(Zipcode);
            pickUpLocationRepo.save(pul);
        }
        return mv;
    }

    @RequestMapping(value = "/editIncome/{id}", method = RequestMethod.GET)
    public ModelAndView editIncome(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncome");
        Optional<Income> editIncomeTable = incomeRepo.findById(id);
        Income income = editIncomeTable.get();
        mv.addObject("Income", income);
        return mv;
    }
    @RequestMapping(value = "/editDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView editDI(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDotInspection");
        Optional<Dot_Inspection> editDI = dotInspectionRepo.findById(id);
        Dot_Inspection dinspection = editDI.get();
        mv.addObject("Dot_Inspection", dinspection);
        return mv;
    }
    @RequestMapping(value = "/editDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView editDOL(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDOL");
        Optional<Drop_Off_Location> editDrol = dropOffLocationRepo.findById(id);
        Drop_Off_Location dol = editDrol.get();
        mv.addObject("Drop_Off_Location", dol);
        return mv;
    }

    @RequestMapping(value = "/editMiscellaneous/{id}", method = RequestMethod.GET)
    public ModelAndView editMisc(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editMisc");
        Optional<Miscellaneous> editMisc = miscellaneousRepo.findById(id);
        Miscellaneous misc = editMisc.get();
        mv.addObject("Miscellaneous", misc);
        return mv;
    }


    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public ModelAndView lin(@RequestParam("id") String id,
                            @RequestParam("uname") String uname,
                            @RequestParam("pwd") String pwd) {
        System_Login login;
        try{
            Optional<System_Login> login1 = systemLoginRepo.findByUname(uname);
            login = login1.get();
            String userpassword = login.getPassword();
            if (pwd.equals(userpassword) && login.getPrivileges().equals("0")) {
                ModelAndView mv = new ModelAndView("tables");
                mv.addObject("welcome","Welcome" + " " + login.getUsername());
                return mv;
            }else if(pwd.equals(userpassword) && login.getPrivileges().equals("1")) {
                ModelAndView mv = new ModelAndView("index");
                mv.addObject("welcome", "Welcome" + " " + login.getUsername());
                return mv;
            }
             else{
                ModelAndView mv = new ModelAndView("signin");
                mv.addObject("msg","Username and or password is incorrect! ");
                return mv;
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
            ModelAndView mv = new ModelAndView("redirect:/");
            return mv;
        }
    }

    @RequestMapping(value = "/save1", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("id") String id,
                             @RequestParam("uname") String uname,
                             @RequestParam("pwd") String pwd,
                             @RequestParam("admin") String admin) {
        ModelAndView mv = new ModelAndView("signup");
        System_Login register;
        if (!id.isEmpty()) {
            Optional<System_Login> signIn = systemLoginRepo.findById(uname.toString());
            register = signIn.get();
        } else {
            register = new System_Login();
        }
        register.setUsername(uname);
        register.setPassword(pwd);
        register.setPrivileges(admin);
        systemLoginRepo.save(register);
        mv.addObject("thelist", systemLoginRepo.findAll());
        return mv;
    }

    //Emergency Contact

    @RequestMapping(value = "/submitEmergencyContact", method = RequestMethod.POST)
    public ModelAndView changesEmergencyContact(@RequestParam("EmergencyContactID") String EmergencyContactID,
                                              @RequestParam("FirstName") String FirstName,
                                              @RequestParam("LastName") String LastName,
                                              @RequestParam("Relationship") String Relationship,
                                              @RequestParam("PhoneNumber") String PhoneNumber,
                                              @RequestParam("StreetAddress") String StreetAddress) {

        ModelAndView mv = new ModelAndView("redirect:/emergencyContacts");

        Emergency_Contact emergencyContact = new Emergency_Contact();

        if (EmergencyContactID.isEmpty()) {
            emergencyContact.setFirst_Name(FirstName);
            emergencyContact.setLast_Name(LastName);
            emergencyContact.setRelationship(Relationship);
            emergencyContact.setPhone_Number(PhoneNumber);
            emergencyContact.setStreet_Address(StreetAddress);
            emergencyContactRepo.save(emergencyContact);

        } else {
            emergencyContact.setEmergency_Contact_ID(EmergencyContactID);
            emergencyContact.setFirst_Name(FirstName);
            emergencyContact.setLast_Name(LastName);
            emergencyContact.setRelationship(Relationship);
            emergencyContact.setPhone_Number(PhoneNumber);
            emergencyContact.setStreet_Address(StreetAddress);
            emergencyContactRepo.save(emergencyContact);


        }
        return mv;
    }
    //Incident
    @RequestMapping(value = "/editIncident/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editIncident(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncident");
        Optional<Incident> editIncidentTable = incidentRepo.findById(id);
        Incident incident = editIncidentTable.get();
        mv.addObject("Incident", incident);
        return mv;
    }
    @RequestMapping(value = "/deleteIncident/{id}", method = RequestMethod.GET) //Method to delete entry
    public ModelAndView deleteIncident(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/incident");
        incidentRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/editMaintenance/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editMaintenance(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editMaintenance");
        Optional<Maintenance> editMaintenance = maintenanceRepo.findById(id);
        Maintenance maintenance = editMaintenance.get();
        mv.addObject("Maintenance", maintenance);
        return mv;
    }



    //Incident Type Methods
    @RequestMapping(value = "/editIncidentType/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editIncidentType(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncidentType");
        Optional<Incident_Type> editIncidentTypeTable = incidentTypeRepo.findById(id);
        Incident_Type incidentType = editIncidentTypeTable.get();
        mv.addObject("IncidentType", incidentType);
        return mv;
    }
    @RequestMapping(value = "/deleteIncidentType/{id}", method = RequestMethod.GET) //Method to delete entry
    public ModelAndView deleteIncidentType(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/incidentType");
        incidentTypeRepo.deleteById(id);
        return mv;
    }
    @RequestMapping(value = "/submitIncidentType", method = RequestMethod.POST) //Method to create new entry
    public ModelAndView addIncidentType(@RequestParam("incidentTypeID") String incidentTypeID,
                                    @RequestParam("incidentType") String incidentType) {
        ModelAndView mv = new ModelAndView("redirect:/incidentType");
        Incident_Type incident_type = new Incident_Type();
        if (incidentTypeID.isEmpty()) {
            incident_type.setType_of_Incident(incidentType);
            incidentTypeRepo.save(incident_type);
        } else {
            incident_type.setType_of_Incident(incidentType);
            incidentTypeRepo.save(incident_type);
        }
        return mv;
    }



    @RequestMapping(value = "/submitInvoiceStatus", method = RequestMethod.POST)
    public ModelAndView addInvoiceStatus(@RequestParam("invoiceStatusID") String invoiceStatusID,
                                  @RequestParam("invoiceStatus") String invoiceStatus){

        ModelAndView mv = new ModelAndView("redirect:/invoiceStatus");
        Invoice_Status invoiceStat = new Invoice_Status();
        if (invoiceStatusID.isEmpty()) {
            invoiceStat.setInvoice_Status(invoiceStatus);
            invoiceStatusRepo.save(invoiceStat);
        } else {
            invoiceStat.setInvoice_ID(invoiceStatusID);
            invoiceStat.setInvoice_Status(invoiceStatus);
            invoiceStatusRepo.save(invoiceStat);
        }
        return mv;
    }

    @RequestMapping(value = "/submitInsuranceTable", method = RequestMethod.POST)
    public ModelAndView addIns(@RequestParam("insureID") String insureID,
                                         @RequestParam("insuranceID") String insuranceID,
                                         @RequestParam("insuranceType") String insuranceType,
                                         @RequestParam("coverageExpiration") String coverageExpiration){

        ModelAndView mv = new ModelAndView("redirect:/invoiceStatus");
        Insurance insur = new Insurance();
        if (insureID.isEmpty()) {
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insuranceRepo.save(insur);
        } else {
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insuranceRepo.save(insur);
        }
        return mv;
    }
}
