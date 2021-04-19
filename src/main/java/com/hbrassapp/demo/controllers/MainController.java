package com.hbrassapp.demo.controllers;

import com.hbrassapp.demo.Models.*;
import org.jboss.jandex.Main;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;
import java.util.UUID;


@Controller
public class MainController {

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

    @RequestMapping(value = "/back")
    public ModelAndView logout(){
        ModelAndView mv = new ModelAndView("signin");
        return mv;
    }

    @RequestMapping(value = "/tables")
    public ModelAndView viewTables() {
        ModelAndView mv = new ModelAndView("tables");
        return mv;
    }

    @RequestMapping(value = "/tables1")
    public ModelAndView viewTables1() {
        ModelAndView mv = new ModelAndView("tables1");
        return mv;
    }

    @RequestMapping(value = "/brokerCompany", method = RequestMethod.GET)
    public ModelAndView viewBrokerCompany() {
        ModelAndView mv = new ModelAndView("brokerCompany");
        mv.addObject("brokerCompanyList", brokerCompanyRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/systemLogin")
    public ModelAndView viewSysLog() {
        ModelAndView mv = new ModelAndView("systemLogin");
        mv.addObject("systemLoginList", systemLoginRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerContracts")
    public ModelAndView viewContracts() {
        ModelAndView mv = new ModelAndView("brokerContracts");
        mv.addObject("brokerList", brokerCompanyRepo.findAll());
        mv.addObject("invoiceList", invoiceRepo.findAll());
        mv.addObject("brokerContractList", brokerContractRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/brokerInfo")
    public ModelAndView viewBrokerInfo() {
        ModelAndView mv = new ModelAndView("brokerInfo");
        mv.addObject("brokerList", brokerCompanyRepo.findAll());
        mv.addObject("brokerInfoList", brokerInfoRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/client")
    public ModelAndView viewClient() {
        ModelAndView mv = new ModelAndView("client");
        mv.addObject("stateList", statesRepo.findAll());
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
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("dotInspectionList", dotInspectionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/dropOffLocation")
    public ModelAndView viewDropOffLocation() {
        ModelAndView mv = new ModelAndView("dropOffLocation");
        mv.addObject("stateList", statesRepo.findAll());
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
        mv.addObject("stateList", statesRepo.findAll());
        mv.addObject("posList", officePositionRepo.findAll());
        mv.addObject("driverList", truckDriverRepo.findAll());
        mv.addObject("emergencyList", emergencyContactRepo.findAll());
        mv.addObject("employeeList", employeerepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/employeeStatus")
    public ModelAndView viewemployeeStatus() {
        ModelAndView mv = new ModelAndView("employeeStatus");
        mv.addObject("employeeList", employeerepo.findAll());
        mv.addObject("employeeStatusList", employeeStatusRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/iftaSticker")
    public ModelAndView viewiftaSticker() {
        ModelAndView mv = new ModelAndView("iftaSticker");
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("iftaStickerList", ifta_stickerRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/incident")
    public ModelAndView viewincident()
    {
        ModelAndView mv = new ModelAndView("incident");
        mv.addObject("loadList", loadsRepo.findAll());
        mv.addObject("employeeList", employeerepo.findAll());
        mv.addObject("incidentList", incidentRepo.findAll());
        return mv;
    }


    @RequestMapping(value = "/income")
    public ModelAndView viewincome() {
        ModelAndView mv = new ModelAndView("income");
        mv.addObject("tripExpenseList", tripExpenseRepo.findAll());
        mv.addObject("loadList", loadsRepo.findAll());
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
        mv.addObject("clientList", clientRepo.findAll());
        mv.addObject("brokerContractList", brokerContractRepo.findAll());
        mv.addObject("invoiceList", invoiceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/invoiceStatus")
    public ModelAndView viewinvoiceStatus() {
        ModelAndView mv = new ModelAndView("invoiceStatus");
        mv.addObject("brokerContractList", brokerContractRepo.findAll());
        mv.addObject("clientList", clientRepo.findAll());
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
        mv.addObject("trailerList", trailerRepo.findAll());
        mv.addObject("dropOffList", dropOffLocationRepo.findAll());
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("driverList", truckDriverRepo.findAll());
        mv.addObject("pickUpList", pickUpLocationRepo.findAll());
        mv.addObject("loadsList", loadsRepo.findAll());
        mv.addObject("vinList", truckRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/maintenance")
    public ModelAndView viewmaintenance() {
        ModelAndView mv = new ModelAndView("maintenance");
        mv.addObject("truckList", truckRepo.findAll());
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
        mv.addObject("employeeList", employeerepo.findAll());
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
        mv.addObject("employeeList", employeerepo.findAll());
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
        mv.addObject("tireVendorList", tireVendorRepo.findAll());
        mv.addObject("tireList", tireRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/tireVendor")
    public ModelAndView viewtireVendor() {
        ModelAndView mv = new ModelAndView("tireVendor");
        mv.addObject("vendorList", vendorRepo.findAll());
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
        mv.addObject("loadList", loadsRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Truck")
    public ModelAndView viewtruck() {
        ModelAndView mv = new ModelAndView("Truck");
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("insuranceList", insuranceRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/truckDriver")
    public ModelAndView viewtruckDriver() {
        ModelAndView mv = new ModelAndView("truckDriver");
        mv.addObject("truckdriverList", truckDriverRepo.findAll());
        mv.addObject("driverList", employeerepo.findAll());
        mv.addObject("stateList", statesRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/trucklog")
    public ModelAndView viewtruckLog() {
        ModelAndView mv = new ModelAndView("trucklog");
        mv.addObject("trucklogList", truckLogRepo.findAll());
        mv.addObject("truckList",truckRepo.findAll());
        mv.addObject("driverList",truckDriverRepo.findAll());
        mv.addObject("dotList",dotInspectionRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/Vendors")
    public ModelAndView viewvendor() {
        ModelAndView mv = new ModelAndView("Vendors");
        mv.addObject("driverList", truckDriverRepo.findAll());
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("dotList", truckRepo.findAll());
        mv.addObject("vendorList", vendorRepo.findAll());
        mv.addObject("stateList", statesRepo.findAll());
        return mv;
    }

    // Add Functionalities
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
            brokerCompany.setActive(true);
            brokerCompanyRepo.save(brokerCompany);
        } else {
            brokerCompany.setBroker_ID(id);
            brokerCompany.setBroker_Name(brokerName);
            brokerCompany.setStreet_Address(streetAddress);
            brokerCompany.setState_Code(stateCode);
            brokerCompany.setZip_Code(zipCode);
            brokerCompany.setPhone_Number(phoneNumber);
            brokerCompany.setEmail_Address(email);
            brokerCompany.setActive(true);
            brokerCompanyRepo.save(brokerCompany);
        }
        return mv;
    }
    @RequestMapping(value = "/submitOfficePosition", method = RequestMethod.POST)
    public ModelAndView changesOfficePosition(@RequestParam("OfficePositionID") String OfficePositionID,
                                              @RequestParam("EmployeePosition") String EmployeePosition)
    {
        ModelAndView mv = new ModelAndView("redirect:/officePosition");
        Office_Position officePosition = new Office_Position();
        if (OfficePositionID.isEmpty()) {
            officePosition.setEmployee_Position(EmployeePosition);
            officePosition.setActive(true);
            officePositionRepo.save(officePosition);
        } else {
            officePosition.setPosition_ID(OfficePositionID);
            officePosition.setEmployee_Position(EmployeePosition);
            officePosition.setActive(true);
            officePositionRepo.save(officePosition);
        }
        return mv;
    }

    @RequestMapping(value = "/submitPayroll", method = RequestMethod.POST)
    public ModelAndView changesPayroll(@RequestParam("PayrollID") String PayrollID,
                                       @RequestParam("EmployeeID") String EmployeeID,
                                       @RequestParam("Rate") String Rate,
                                       @RequestParam("PaymentType") String PaymentType,
                                       @RequestParam("PayPeriodS") String PayPeriodS,
                                       @RequestParam("PayPeriodE") String PayPeriodE){
        ModelAndView mv = new ModelAndView("redirect:/payroll");
        Payroll payroll = new Payroll();
        if (PayrollID.isEmpty()) {
            payroll.setEmployee_ID(EmployeeID);
            payroll.setRate(Rate);
            payroll.setPayment_Type(PaymentType);
            payroll.setPay_Period_Start(PayPeriodS);
            payroll.setPay_Period_End(PayPeriodE);
            payroll.setActive(true);
            payrollRepo.save(payroll);
        } else {
            payroll.setPayroll_ID(PayrollID);
            payroll.setEmployee_ID(EmployeeID);
            payroll.setRate(Rate);
            payroll.setPayment_Type(PaymentType);
            payroll.setPay_Period_Start(PayPeriodS);
            payroll.setPay_Period_End(PayPeriodE);
            payroll.setActive(true);
            payrollRepo.save(payroll);

        }
        return mv;
    }


    @RequestMapping(value = "/submitLoads", method = RequestMethod.POST)
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
            loads.setActive(true);
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
            loads.setActive(true);
            loadsRepo.save(loads);
        }
        return mv;
    }

    @RequestMapping(value = "/addClient")
    public ModelAndView addClient() {
        ModelAndView mv = new ModelAndView("addClient");
        return mv;
    }


    @RequestMapping(value = "/submitBrokerContract", method = RequestMethod.POST)
    public ModelAndView changesBrokerContract(@RequestParam("contractID") String contractID,
                                              @RequestParam("invoiceID") String invoiceID,
                                              @RequestParam("brokerID") String brokerID,
                                              @RequestParam("rate") double rate,
                                              @RequestParam("fare") double fare,
                                              @RequestParam("commission") double commission,
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
            brokerContract.setActive(true);
            brokerContractRepo.save(brokerContract);
        } else {
            brokerContract.setBroker_Contract_ID(contractID);
            brokerContract.setInvoice_ID(invoiceID);
            brokerContract.setBroker_ID(brokerID);
            brokerContract.setRate(rate);
            brokerContract.setFare(fare);
            brokerContract.setCommission(commission);
            brokerContract.setContract_Status(status);
            brokerContract.setActive(true);
            brokerContractRepo.save(brokerContract);
        }
        return mv;
    }

    @RequestMapping(value = "/submitBrokerInfo", method = RequestMethod.POST)
    public ModelAndView changesBrokerInfo(@RequestParam("contactID") String contactID,
                                         @RequestParam("firstName") String firstName,
                                         @RequestParam("lastName") String lastName,
                                         @RequestParam("email") String email,
                                         @RequestParam("phoneNumber") String phoneNumber,
                                         @RequestParam("brokerID") String brokerID) {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        Broker_Info brokerInfo = new Broker_Info();
        if (contactID.isEmpty()) {
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfo.setActive(true);
            brokerInfoRepo.save(brokerInfo);
        }
        else {
            brokerInfo.setContact_ID(contactID);
            brokerInfo.setFirstName(firstName);
            brokerInfo.setLastName(lastName);
            brokerInfo.setEmail(email);
            brokerInfo.setPhoneNumber(phoneNumber);
            brokerInfo.setBrokerID(brokerID);
            brokerInfo.setActive(true);
            brokerInfoRepo.save(brokerInfo);
        }
        return mv;
    }

    @RequestMapping(value = "/submitClient", method = RequestMethod.POST)
    public ModelAndView changesClient(@RequestParam("clientID") String clientID,
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
            client.setActive(true);
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
            client.setActive(true);
            clientRepo.save(client);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIncome", method = RequestMethod.POST)
    public ModelAndView addIncome(@RequestParam("incomeID") String incomeID,
                                  @RequestParam("loadID") String loadID,
                                  @RequestParam("loadFare") String loadFare,
                                  @RequestParam("commission") String commission,
                                  @RequestParam("insurance") String insurance,
                                  @RequestParam("tripExpenseID") String tripExpenseID,
                                  @RequestParam("totalIncome") String totalIncome) {
        ModelAndView mv = new ModelAndView("redirect:/income");
        Income income = new Income();
        if (incomeID.isEmpty()) {
            income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
            income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            income.setActive(true);
            incomeRepo.save(income);
        } else {
            income.setIncome_ID(incomeID);
            income.setLoad_ID(loadID);
            income.setLoad_Fare(loadFare);
            income.setCommission(commission);
            income.setInsurance(insurance);
            income.setTrip_Expense_ID(tripExpenseID);
            income.setTotal_Income(totalIncome);
            income.setActive(true);
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
            dinspection.setActive(true);
            dotInspectionRepo.save(dinspection);
        } else {
            dinspection.setDot_Inspection_ID(dotInspectionID);
            dinspection.setTruck_ID_VIN(vin);
            dinspection.setDot_Certification_Date(cDate);
            dinspection.setDot_Expiration_Date(eDate);
            dinspection.setActive(true);
            dotInspectionRepo.save(dinspection);
        }
        return mv;
    }

    @RequestMapping(value = "/submitInvoice", method = RequestMethod.POST)
    public ModelAndView addInvoice(@RequestParam("invoiceID") String invoiceID,
                                  @RequestParam("clientID") String clientID,
                                  @RequestParam("bcID") String bcID,
                                  @RequestParam("iDate") String iDate,
                                  @RequestParam("istatus") String istatus) {
        ModelAndView mv = new ModelAndView("redirect:/invoice");
        Invoice invoice = new Invoice();
        States states = new States();
        if (invoiceID.isEmpty()) {
            invoice.setClientID(clientID);
            invoice.setBrokerContractID(bcID);
            invoice.setInvoiceDate(iDate);
            invoice.setInvoiceStatusID(istatus);
            invoice.setActive(true);
            invoiceRepo.save(invoice);
        } else {
            invoice.setInvoiceID(invoiceID);
            invoice.setClientID(clientID);
            invoice.setBrokerContractID(bcID);
            invoice.setInvoiceDate(iDate);
            invoice.setInvoiceStatusID(istatus);
            invoice.setActive(true);
            invoiceRepo.save(invoice);
        }
        return mv;
    }

    @RequestMapping(value = "/submitSchedule", method = RequestMethod.POST)
    public ModelAndView addSchedule(@RequestParam("scheduleID") String scheduleID,
                                   @RequestParam("empID") String empID,
                                   @RequestParam("tor") String tor,
                                   @RequestParam("sDate") String sDate,
                                   @RequestParam("eDate") String eDate) {
        ModelAndView mv = new ModelAndView("redirect:/schedule");
        Schedule schedule = new Schedule();
        States states = new States();
        if (scheduleID.isEmpty()) {
            schedule.setEmployeeID(empID);
            schedule.setTimeOffRequest(tor);
            schedule.setVacationStart(sDate);
            schedule.setVacationEnd(eDate);
            schedule.setActive(true);
            scheduleRepo.save(schedule);
        } else {
            schedule.setScheduleID(scheduleID);
            schedule.setEmployeeID(empID);
            schedule.setTimeOffRequest(tor);
            schedule.setVacationStart(sDate);
            schedule.setVacationEnd(eDate);
            schedule.setActive(true);
            scheduleRepo.save(schedule);
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
            misc.setActive(true);
            miscellaneousRepo.save(misc);
        } else {
            misc.setMiscellaneous_ID(miscID);
            misc.setCost(cost);
            misc.setDescription(desc);
            misc.setActive(true);
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
            dol.setActive(true);
            dropOffLocationRepo.save(dol);
        } else {
            dol.setDrop_Off_ID(dropOffID);
            dol.setDrop_Off_Tracker_Code(tCode);
            dol.setDrop_Off_Date(dDate);
            dol.setStreet_Address(sAddy);
            dol.setCity(dCity);
            dol.setState_Code(sCode);
            dol.setZip_Code(zCode);
            dol.setActive(true);
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
            maintenance.setActive(true);
            maintenanceRepo.save(maintenance);
        } else {
            maintenance.setMaintenanceID(MaintenanceID);
            maintenance.setMileage(Mileage);
            maintenance.setServiceDate(ServiceDate);
            maintenance.setService(Service);
            maintenance.setServiceFee(ServiceFee);
            maintenance.setTruckIDVIN(TruckIdVin);
            maintenance.setActive(true);
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
            pul.setActive(true);
            pickUpLocationRepo.save(pul);
        } else {
            pul.setPickUpID(PickUpLocationID);
            pul.setPuTrackerCode(PickUpTrackerCode);
            pul.setPuDate(PickUpDate);
            pul.setStreetAddress(StreetAddress);
            pul.setCity(City);
            pul.setStateCode(StateCode);
            pul.setZipCode(Zipcode);
            pul.setActive(true);
            pickUpLocationRepo.save(pul);
        }
        return mv;
    }

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
            emergencyContact.setActive(true);
            emergencyContactRepo.save(emergencyContact);
        } else {
            emergencyContact.setEmergency_Contact_ID(EmergencyContactID);
            emergencyContact.setFirst_Name(FirstName);
            emergencyContact.setLast_Name(LastName);
            emergencyContact.setRelationship(Relationship);
            emergencyContact.setPhone_Number(PhoneNumber);
            emergencyContact.setStreet_Address(StreetAddress);
            emergencyContact.setActive(true);
            emergencyContactRepo.save(emergencyContact);
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
            invoiceStat.setActive(true);
            invoiceStatusRepo.save(invoiceStat);
        } else {
            invoiceStat.setInvoice_Status_ID(invoiceStatusID);
            invoiceStat.setInvoice_Status(invoiceStatus);
            invoiceStat.setActive(true);
            invoiceStatusRepo.save(invoiceStat);
        }
        return mv;
    }

    @RequestMapping(value = "/submitInsuranceTable", method = RequestMethod.POST)
    public ModelAndView addInsu(@RequestParam("insureID") String insureID,
                                @RequestParam("insuranceID") String insuranceID,
                                @RequestParam("insuranceType") String insuranceType,
                                @RequestParam("coverageExpiration") String coverageExpiration){
        ModelAndView mv = new ModelAndView("redirect:/insurance");
        Insurance insur = new Insurance();
        if (insureID.isEmpty()) {
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insur.setActive(true);
            insuranceRepo.save(insur);
        } else {
            insur.setInsure_ID(insureID);
            insur.setInsurance_ID(insuranceID);
            insur.setInsurance_Type(insuranceType);
            insur.setCoverage_Expiration(coverageExpiration);
            insur.setActive(true);
            insuranceRepo.save(insur);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIfta", method = RequestMethod.POST)
    public ModelAndView addIfta(@RequestParam("iftaID") String iftaID,
                                @RequestParam("ifta") String ifta,
                                @RequestParam("vin") String vin,
                                @RequestParam("eDate") String eDate){

        ModelAndView mv = new ModelAndView("redirect:/iftaSticker");
        IFTA_Sticker iftas = new IFTA_Sticker();
        if (iftaID.isEmpty()) {
            iftas.setIFTA_Status(ifta);
            iftas.setTruck_ID_VIN(vin);
            iftas.setIFTA_Expiration_Date(eDate);
            iftas.setActive(true);
            ifta_stickerRepo.save(iftas);
        } else {
            iftas.setIFTA_ID(iftaID);
            iftas.setIFTA_Status(ifta);
            iftas.setTruck_ID_VIN(vin);
            iftas.setIFTA_Expiration_Date(eDate);
            iftas.setActive(true);
            ifta_stickerRepo.save(iftas);
        }
        return mv;
    }

    @RequestMapping(value = "/submitTire", method = RequestMethod.POST)
    public ModelAndView addTire(@RequestParam("tireID") String tireID,
                                @RequestParam("tire") String tire){

        ModelAndView mv = new ModelAndView("redirect:/tire");
        Tire tire1 = new Tire();
        if (tireID.isEmpty()) {
            tire1.setTire_Name(tire);
            tire1.setActive(true);
            tireRepo.save(tire1);
        } else {
            tire1.setTire_ID(tireID);
            tire1.setTire_Name(tire);
            tire1.setActive(true);
            tireRepo.save(tire1);
        }
        return mv;
    }

    @RequestMapping(value = "/submitTireVendor", method = RequestMethod.POST)
    public ModelAndView addTV(@RequestParam("tireVID") String tireVID,
                                @RequestParam("vID") String vID){
        ModelAndView mv = new ModelAndView("redirect:/tireVendor");
        Tire_Vendor tireV = new Tire_Vendor();
        if (tireVID.isEmpty()) {
            tireV.setVendor_ID(tireVID);
            tireV.setActive(true);
            tireVendorRepo.save(tireV);
        } else {
            tireV.setTire_Vendor_ID(tireVID);
            tireV.setVendor_ID(vID);
            tireV.setActive(true);
            tireVendorRepo.save(tireV);
        }
        return mv;
    }

    @RequestMapping(value = "/submitTrailer", method = RequestMethod.POST)
    public ModelAndView addTrailer(@RequestParam("cID") String cID,
                                   @RequestParam("trailerID") String trailerID,
                                   @RequestParam("tc") String tc,
                                   @RequestParam("tot") String tot,
                                   @RequestParam("weight") String weight,
                                   @RequestParam("lcp") String lcp){
        ModelAndView mv = new ModelAndView("redirect:/Trailer");
        Trailer trailer = new Trailer();
        if (cID.isEmpty()) {
            trailer.setTrailer_ID(trailerID);
            trailer.setTrailer_Code(tc);
            trailer.setType_Of_Trailer(tot);
            trailer.setWeight_Of_Trailer(weight);
            trailer.setLicense_Plate(lcp);
            trailer.setActive(true);
            trailerRepo.save(trailer);
        } else {
            trailer.setColumn_ID(cID);
            trailer.setTrailer_ID(trailerID);
            trailer.setTrailer_Code(tc);
            trailer.setType_Of_Trailer(tot);
            trailer.setWeight_Of_Trailer(weight);
            trailer.setLicense_Plate(lcp);
            trailer.setActive(true);
            trailerRepo.save(trailer);
        }
        return mv;
    }

    @RequestMapping(value = "/submitCountry", method = RequestMethod.POST)
    public ModelAndView addCountry(@RequestParam("cc") String cc,
                                   @RequestParam("c") String c){
        ModelAndView mv = new ModelAndView("redirect:/country");
        Country country = new Country();


            country.setCountry_Code(cc);
            country.setCountry_Name(c);
            country.setActive(true);
            countryRepo.save(country);

        return mv;
    }

    @RequestMapping(value = "/submitDriverTruck", method = RequestMethod.POST)
    public ModelAndView addTdriver(@RequestParam("driverID") String driverID,
                                   @RequestParam("driverLicenseType") String driverLicenseType,
                                   @RequestParam("driverStateCode") String driverStateCode) {

        ModelAndView mv = new ModelAndView("redirect:/truckDriver");
        Truck_Driver trudriv = new Truck_Driver();
        if (driverID.isEmpty()) {
            trudriv.setDriver_ID(driverID);
            trudriv.setLicense_Type(driverLicenseType);
            trudriv.setState_Code(driverStateCode);
            trudriv.setActive(true);
            truckDriverRepo.save(trudriv);
        } else {
            trudriv.setDriver_ID(driverID);
            trudriv.setLicense_Type(driverLicenseType);
            trudriv.setState_Code(driverStateCode);
            trudriv.setActive(true);
            truckDriverRepo.save(trudriv);
        }
        return mv;
    }

    @RequestMapping(value = "/submitEmployeeStatus", method = RequestMethod.POST)
    public ModelAndView addEmpStatus(@RequestParam("empID") String empID,
                                     @RequestParam("eStatus") String eStatus){

        ModelAndView mv = new ModelAndView("redirect:/employeeStatus");
        Employee_Status es = new Employee_Status();
        if (empID.isEmpty()) {
            es.setEmployee_Status(eStatus);
            es.setActive(true);
            employeeStatusRepo.save(es);
        } else {
            es.setEmployee_ID(empID);
            es.setEmployee_Status(eStatus);
            es.setActive(true);
            employeeStatusRepo.save(es);
        }
        return mv;
    }

    @RequestMapping(value = "/addVendors", method = RequestMethod.POST)
    public ModelAndView changesVendor(@RequestParam("vendorID") String vendorID,
                                      @RequestParam("nameVendor") String nameVendor,
                                      @RequestParam("vendorPhoneNumber") String vendorPhoneNumber,
                                      @RequestParam("vendorStreetAddress") String vendorStreetAddress,
                                      @RequestParam("vendorCity") String vendorCity,
                                      @RequestParam("vendorStateCode") String vendorStateCode,
                                      @RequestParam("vendorZipCode") String vendorZipCode,
                                      @RequestParam("vendorEmail") String vendorEmail,
                                      @RequestParam("vendorTracker") String vendorTracker){
        ModelAndView mv = new ModelAndView("redirect:/Vendors");
        Vendor Vendors = new Vendor();
        if (vendorID.isEmpty()) {
            Vendors.setVendor_Name(nameVendor);
            Vendors.setPhone_Number(vendorPhoneNumber);
            Vendors.setStreet_Address(vendorStreetAddress);
            Vendors.setCity(vendorCity);
            Vendors.setState_Code(vendorStateCode);
            Vendors.setZip_Code(vendorZipCode);
            Vendors.setEmail(vendorEmail);
            Vendors.setVendor_Tracker(vendorTracker);
            Vendors.setActive(true);
            vendorRepo.save(Vendors);
        } else {
            Vendors.setVendor_ID(vendorID);
            Vendors.setVendor_Name(nameVendor);
            Vendors.setPhone_Number(vendorPhoneNumber);
            Vendors.setStreet_Address(vendorStreetAddress);
            Vendors.setCity(vendorCity);
            Vendors.setState_Code(vendorStateCode);
            Vendors.setZip_Code(vendorZipCode);
            Vendors.setEmail(vendorEmail);
            Vendors.setVendor_Tracker(vendorTracker);
            Vendors.setActive(true);
            vendorRepo.save(Vendors);
        }
        return mv;
    }

    @RequestMapping(value = "/submitEmployee", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("empID") String empID,
                               @RequestParam("fName") String fName,
                               @RequestParam("lName") String lName,
                               @RequestParam("pNumber") String pNumber,
                               @RequestParam("eMail") String eMail,
                               @RequestParam("sAddy") String sAddy,
                               @RequestParam("city") String city,
                               @RequestParam("sCode") String sCode,
                               @RequestParam("zCode") String zCode,
                               @RequestParam("posID") String posID,
                               @RequestParam("driverID") String driverID,
                               @RequestParam("eCon") String eCon) {
        ModelAndView mv = new ModelAndView("redirect:/employee");
        employee emp = new employee();
        if (empID.isEmpty()) {
            emp.setFirst_Name(fName);
            emp.setLast_Name(lName);
            emp.setPhone_Number(pNumber);
            emp.setEmail(eMail);
            emp.setStreet_Address(sAddy);
            emp.setCity(city);
            emp.setState_Code(sCode);
            emp.setZip_Code(zCode);
            emp.setPosition_ID(posID);
            emp.setDriver_ID(driverID);
            emp.setEmergency_Contact_ID(eCon);
            emp.setActive(true);
            employeerepo.save(emp);
        } else {
            emp.setEmployee_ID(empID);
            emp.setFirst_Name(fName);
            emp.setLast_Name(lName);
            emp.setPhone_Number(pNumber);
            emp.setEmail(eMail);
            emp.setStreet_Address(sAddy);
            emp.setCity(city);
            emp.setState_Code(sCode);
            emp.setZip_Code(zCode);
            emp.setPosition_ID(posID);
            emp.setDriver_ID(driverID);
            emp.setEmergency_Contact_ID(eCon);
            emp.setActive(true);
            employeerepo.save(emp);
        }
        return mv;
    }

    @RequestMapping(value = "/addTripExpense", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("teID") String teID,
                               @RequestParam("fCost") String fCost,
                               @RequestParam("sExpense") String sExpense,
                               @RequestParam("oExpense") String oExpense,
                               @RequestParam("rExpense") String rExpense,
                               @RequestParam("tExpense") String tExpense,
                               @RequestParam("loadID") String loadID) {
        ModelAndView mv = new ModelAndView("redirect:/TripExpense");
        Trip_Expense tex = new Trip_Expense();
        if (teID.isEmpty()) {
            tex.setFuel_Cost(fCost);
            tex.setScale_Expense(sExpense);
            tex.setOther_Expense(oExpense);
            tex.setRepair_Expense(rExpense);
            tex.setTotal_Expense(tExpense);
            tex.setLoad_ID(loadID);
            tex.setActive(true);
            tripExpenseRepo.save(tex);
        } else {
            tex.setTrip_Expense_ID(teID);
            tex.setFuel_Cost(fCost);
            tex.setScale_Expense(sExpense);
            tex.setOther_Expense(oExpense);
            tex.setRepair_Expense(rExpense);
            tex.setTotal_Expense(tExpense);
            tex.setLoad_ID(loadID);
            tex.setActive(true);
            tripExpenseRepo.save(tex);
        }
        return mv;
    }

    @RequestMapping(value = "/addtruck", method = RequestMethod.POST)
    public ModelAndView addEmp(@RequestParam("tId") String tId,
                               @RequestParam("tVin") String tVin,
                               @RequestParam("year") String year,
                               @RequestParam("lPlate") String lPlate,
                               @RequestParam("vTracker") String vTracker,
                               @RequestParam("make") String make,
                               @RequestParam("model") String model,
                               @RequestParam("pNumber") String pNumber) {
        ModelAndView mv = new ModelAndView("redirect:/Truck");
        Truck tru = new Truck();
        if (tId.isEmpty()) {
            tru.setTruck_ID_VIN(tVin);
            tru.setYear(year);
            tru.setLicense_Plate(lPlate);
            tru.setVehicle_Tracker(vTracker);
            tru.setMake(make);
            tru.setModel(model);
            tru.setPolicy_Number(pNumber);
            tru.setActive(true);
            truckRepo.save(tru);
        } else {
            tru.setTruck_ID(tId);
            tru.setTruck_ID_VIN(tVin);
            tru.setYear(year);
            tru.setLicense_Plate(lPlate);
            tru.setVehicle_Tracker(vTracker);
            tru.setMake(make);
            tru.setModel(model);
            tru.setPolicy_Number(pNumber);
            tru.setActive(true);
            truckRepo.save(tru);
        }
        return mv;
    }
    @RequestMapping(value = "/submitTruckLog", method = RequestMethod.POST)
    public ModelAndView addTruckLog(@RequestParam("logID") String logID,
                                    @RequestParam("truckVIN") String truckVIN,
                                    @RequestParam("driverID") String driverID,
                                    @RequestParam("usDotID") String usDotID,
                                    @RequestParam("fLevel") String fLevel) {
        ModelAndView mv = new ModelAndView("redirect:/trucklog");
        Truck_Log truck_log = new Truck_Log();
        if (logID.isEmpty()) {
            truck_log.setLogID(logID);
            truck_log.setTruckIDVIN(truckVIN);
            truck_log.setDriverID(driverID);
            truck_log.setUsDotID(usDotID);
            truck_log.setFuelLevel(fLevel);
            truck_log.setActive(true);
            truckLogRepo.save(truck_log);
        } else {
            truck_log.setLogID(logID);
            truck_log.setTruckIDVIN(truckVIN);
            truck_log.setDriverID(driverID);
            truck_log.setUsDotID(usDotID);
            truck_log.setFuelLevel(fLevel);
            truck_log.setActive(true);
            truckLogRepo.save(truck_log);
        }
        return mv;
    }

    @RequestMapping(value = "/submitLoadBoard", method = RequestMethod.POST)
    public ModelAndView addLoadBoard(@RequestParam("loadBoardID") String loadBoardID,
                                    @RequestParam("boardName") String boardName,
                                    @RequestParam("website") String website,
                                    @RequestParam("subscribed") String subscribed){
        ModelAndView mv = new ModelAndView("redirect:/loadBoard");
        Load_Board load_board = new Load_Board();
        if (loadBoardID.isEmpty()) {
            load_board.setLoadBoardID(loadBoardID);
            load_board.setBoardName(boardName);
            load_board.setWebsite(website);
            load_board.setSubscribed(subscribed);
            load_board.setActive(true);
            loadBoardRepo.save(load_board);
        } else {
            load_board.setLoadBoardID(loadBoardID);
            load_board.setBoardName(boardName);
            load_board.setWebsite(website);
            load_board.setSubscribed(subscribed);
            load_board.setActive(true);
            loadBoardRepo.save(load_board);
        }
        return mv;
    }

    @RequestMapping(value = "/submitIncident", method = RequestMethod.POST)
    public ModelAndView addIncident(@RequestParam("incidentID") String incidentID,
                                     @RequestParam("incidentType") String incidentType,
                                     @RequestParam("loadID") String loadID,
                                     @RequestParam("employeeID") String employeeID,
                                    @RequestParam("incidentStatus") String incidentStatus,
                                    @RequestParam("remarks") String remarks){
        ModelAndView mv = new ModelAndView("redirect:/incident");
        Incident incident = new Incident();
        if (incidentID.isEmpty()) {
            incident.setIncident_Status(incidentStatus);
            incident.setLoad_ID(loadID);
            incident.setEmployee_ID(employeeID);
            incident.setIncident_Type(incidentType);
            incident.setRemarks(remarks);
            incident.setActive(true);
            incidentRepo.save(incident);
        } else {
            incident.setIncident_ID(incidentID);
            incident.setIncident_Status(incidentStatus);
            incident.setIncident_Type(incidentType);
            incident.setLoad_ID(loadID);
            incident.setEmployee_ID(employeeID);
            incident.setRemarks(remarks);
            incident.setActive(true);
            incidentRepo.save(incident);
        }
        return mv;
    }

    // Edit Functionalities

    @RequestMapping(value = "/editBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerCompany");
        Optional<Broker_Company> brokerCompanyRecord = brokerCompanyRepo.findById(id);
        Broker_Company brokerCompany = brokerCompanyRecord.get();
        mv.addObject("Broker_Company", brokerCompany);
        return mv;
    }


    @RequestMapping(value = "/editBrokerContracts/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerContracts(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerContracts");
        mv.addObject("brokerList", brokerCompanyRepo.findAll());
        mv.addObject("invoiceList", invoiceRepo.findAll());
        Optional<Broker_Contract> brokerContractRecord = brokerContractRepo.findById(id);
        Broker_Contract brokerContract = brokerContractRecord.get();
        mv.addObject("Broker_Contract", brokerContract);
        return mv;
    }

    @RequestMapping(value = "/editBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView editBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editBrokerInfo");
        mv.addObject("brokerList", brokerCompanyRepo.findAll());
        Optional<Broker_Info> brokerInfoRecord = brokerInfoRepo.findById(id);
        Broker_Info brokerInfo = brokerInfoRecord.get();
        mv.addObject("Broker_Info", brokerInfo);
        return mv;
    }

    @RequestMapping(value = "/editClient/{id}", method = RequestMethod.GET)
    public ModelAndView editClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editClient");
        mv.addObject("stateList", statesRepo.findAll());
        Optional<Client> clientInfoRecord = clientRepo.findById(id);
        Client client = clientInfoRecord.get();
        mv.addObject("Client", client);
        return mv;
    }

    @RequestMapping(value = "/editIncome/{id}", method = RequestMethod.GET)
    public ModelAndView editIncome(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncome");
        mv.addObject("loadList", loadsRepo.findAll());
        mv.addObject("tripEL", tripExpenseRepo.findAll());
        Optional<Income> editIncomeTable = incomeRepo.findById(id);
        Income income = editIncomeTable.get();
        mv.addObject("Income", income);
        return mv;
    }

    @RequestMapping(value = "/editEmployeeStatus/{id}", method = RequestMethod.GET)
    public ModelAndView editEmployeeStatus(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editEmployeeStatus");
        Optional<Employee_Status> editEmployeeStatus = employeeStatusRepo.findById(id);
        Employee_Status ees = editEmployeeStatus.get();
        mv.addObject("Employee_Status", ees);
        return mv;
    }
    @RequestMapping(value = "/editInvoice_Status/{id}", method = RequestMethod.GET)
    public ModelAndView editInvoice_Status(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editInvoiceStatus");
        Optional<Invoice_Status> editInv = invoiceStatusRepo.findById(id);
        Invoice_Status inv = editInv.get();
        mv.addObject("Invoice_Status", inv);
        return mv;
    }
    @RequestMapping(value = "/editLoad_Board/{id}", method = RequestMethod.GET)
    public ModelAndView editLoad_Board(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editLoadBoard");
        Optional<Load_Board> editLoad_Board = loadBoardRepo.findById(id);
        Load_Board lb = editLoad_Board.get();
        mv.addObject("Load_Board", lb);
        return mv;
    }
    @RequestMapping(value = "/editLoads/{id}", method = RequestMethod.GET)
    public ModelAndView editLoads(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editLoads");
        mv.addObject("traList", trailerRepo.findAll());
        mv.addObject("doList", dropOffLocationRepo.findAll());
        mv.addObject("truckList", truckRepo.findAll());
        mv.addObject("driList", truckDriverRepo.findAll());
        mv.addObject("puList", pickUpLocationRepo.findAll());
        mv.addObject("loadsList", loadsRepo.findAll());
        mv.addObject("vinList", truckRepo.findAll());
        Optional<Loads> editLoads = loadsRepo.findById(id);
        Loads ees = editLoads.get();
        mv.addObject("Loads", ees);
        return mv;
    }
    @RequestMapping(value = "/editOffice_Position/{id}", method = RequestMethod.GET)
    public ModelAndView editOffice_Position(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editOfficePos");
        Optional<Office_Position> editOfficePosition = officePositionRepo.findById(id);
        Office_Position ees = editOfficePosition.get();
        mv.addObject("Office_Position", ees);
        return mv;
    }
    @RequestMapping(value = "/editPayroll/{id}", method = RequestMethod.GET)
    public ModelAndView editPayroll(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editPayroll");
        Optional<Payroll> editPayroll = payrollRepo.findById(id);
        Payroll ees = editPayroll.get();
        mv.addObject("Payroll", ees);
        return mv;
    }
    @RequestMapping(value = "/editPick_Up_Location/{id}", method = RequestMethod.GET)
    public ModelAndView editPick_Up_Location(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editPickup");
        Optional<Pick_Up_location> editPick_Up_Location = pickUpLocationRepo.findById(id);
        Pick_Up_location ees = editPick_Up_Location.get();
        mv.addObject("puList", pickUpLocationRepo.findAll());
        mv.addObject("stateList", statesRepo.findAll());
        mv.addObject("Pick_Up_location", ees);
        return mv;
    }
    @RequestMapping(value = "/editSchedule/{id}", method = RequestMethod.GET)
    public ModelAndView editSchedule(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editSchedule");
        Optional<Schedule> editSchedule = scheduleRepo.findById(id);
        Schedule ees = editSchedule.get();
        mv.addObject("Employee_Status", ees);
        return mv;
    }
    @RequestMapping(value = "/editTire_Vendor/{id}", method = RequestMethod.GET)
    public ModelAndView editTire_Vendor(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTireVendor");
        Optional<Tire_Vendor> editTire_Vendor = tireVendorRepo.findById(id);
        Tire_Vendor ees = editTire_Vendor.get();
        mv.addObject("Tire_Vendor", ees);
        return mv;
    }
    @RequestMapping(value = "/editTrip_Expense/{id}", method = RequestMethod.GET)
    public ModelAndView editTrip_Expense(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTripExpense");
        Optional<Trip_Expense> editTrip_Expense = tripExpenseRepo.findById(id);
        Trip_Expense ees = editTrip_Expense.get();
        mv.addObject("Trip_Expense", ees);
        return mv;
    }
    @RequestMapping(value = "/editTruck_Log/{id}", method = RequestMethod.GET)
    public ModelAndView editTruck_Log(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTruckLog");
        Optional<Truck_Log> editTruck_Log = truckLogRepo.findById(id);
        Truck_Log ees = editTruck_Log.get();
        mv.addObject("Truck_Log", ees);
        return mv;
    }

    @RequestMapping(value = "/editDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView editDI(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDotInspection");
        mv.addObject("truckList", truckRepo.findAll());
        Optional<Dot_Inspection> editDI = dotInspectionRepo.findById(id);
        Dot_Inspection dinspection = editDI.get();
        mv.addObject("Dot_Inspection", dinspection);
        return mv;
    }
    @RequestMapping(value = "/editDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView editDOL(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editDOL");
        mv.addObject("stateList", statesRepo.findAll());
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

    @RequestMapping(value = "/editIncident/{id}", method = RequestMethod.GET) //Method to edit entry
    public ModelAndView editInc(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIncident");
        mv.addObject("loadList", loadsRepo.findAll());
        mv.addObject("employeeList", employeerepo.findAll());
        Optional<Incident> editIncidentTable = incidentRepo.findById(id);
        Incident incident = editIncidentTable.get();
        mv.addObject("Incident", incident);
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

    @RequestMapping(value = "/editTruck_Driver/{id}", method = RequestMethod.GET)
    public ModelAndView editTruckDriver(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTruckDriver");
        Optional<Truck_Driver> editTD = truckDriverRepo.findById(id);
        Truck_Driver tdv = editTD.get();
        mv.addObject("Truck_Driver", tdv);
        return mv;
    }

    @RequestMapping(value = "/editInsurance/{insureID}", method = RequestMethod.GET)
    public ModelAndView editIns(@PathVariable("insureID") String insureID) {
        ModelAndView mv = new ModelAndView("editinsurance");
        Optional<Insurance> editINS = insuranceRepo.findById(insureID);
        Insurance insr = editINS.get();
        mv.addObject("Insurance", insr);
        return mv;
    }

    @RequestMapping(value = "/editIFTA_Sticker/{id}", method = RequestMethod.GET)
    public ModelAndView editIFTA(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editIFTA");
        Optional<IFTA_Sticker> editIS = ifta_stickerRepo.findById(id);
        IFTA_Sticker iftas = editIS.get();
        mv.addObject("IFTA_Sticker", iftas);
        return mv;
    }

    @RequestMapping(value = "/editCountry/{id}", method = RequestMethod.GET)
    public ModelAndView editCountries(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editCountry");
        Optional<Country> editCC = countryRepo.findById(id);
        Country country = editCC.get();
        mv.addObject("Country", country);
        return mv;
    }
    @RequestMapping(value = "/editTrailer/{id}", method = RequestMethod.GET)
    public ModelAndView editTrailer(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTrailer");
        Optional<Trailer> editT = trailerRepo.findById(id);
        Trailer trailer = editT.get();
        mv.addObject("Trailer", trailer);
        return mv;
    }
    @RequestMapping(value = "/editTire/{id}", method = RequestMethod.GET)
    public ModelAndView editTires(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTire");
        Optional<Tire> editTire = tireRepo.findById(id);
        Tire tire = editTire.get();
        mv.addObject("Tire", tire);
        return mv;
    }

    @RequestMapping(value = "/editVendor/{id}", method = RequestMethod.GET)
    public ModelAndView editVEND(@PathVariable("id") String vendorID) {
        ModelAndView mv = new ModelAndView("editV");
        Optional<Vendor> editVDE = vendorRepo.findById(vendorID);
        Vendor ven = editVDE.get();
        mv.addObject("Vendor", ven);
        return mv;
    }

    @RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView editEmployee(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editEmployee");
        mv.addObject("stateList", statesRepo.findAll());
        Optional<employee> emp = employeerepo.findById(id);
        employee empl = emp.get();
        mv.addObject("employee", empl);
        return mv;
    }

    @RequestMapping(value = "/editEmergencyContact/{id}", method = RequestMethod.GET)
    public ModelAndView editEmergencyContact(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editEmergencyContact");
        Optional<Emergency_Contact> emContact = emergencyContactRepo.findById(id);
        Emergency_Contact emgContact = emContact.get();
        mv.addObject("Emergency_Contact", emgContact);
        return mv;
    }

    @RequestMapping(value = "/editInvoice/{id}", method = RequestMethod.GET)
    public ModelAndView editInvoice(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editInvoice");
        Optional<Invoice> invoice = invoiceRepo.findById(id);
        Invoice inv = invoice.get();
        mv.addObject("Invoice", inv);
        return mv;
    }

    @RequestMapping(value = "/editTruck/{id}", method = RequestMethod.GET)
    public ModelAndView editTruck(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("editTruck");
        Optional<Truck> invoice = truckRepo.findById(id);
        Truck trk = invoice.get();
        mv.addObject("Truck", trk);
        return mv;
    }


    // Delete Functionalities

    @RequestMapping(value = "/deleteBrokerCompany/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerCompany(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerCompany");
        Optional<Broker_Company> brokerCompany = brokerCompanyRepo.findById(id);
        Broker_Company bC = brokerCompany.get();
        bC.setActive(false);
        brokerCompanyRepo.save(bC);
        return mv;
    }
    @RequestMapping(value = "/deleteLoad_Board/{id}", method = RequestMethod.GET)
    public ModelAndView deleteLoadBoard(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/loadBoard");
        Optional<Load_Board> loadBoard = loadBoardRepo.findById(id);
        Load_Board active = loadBoard.get();
        active.setActive(false);
        loadBoardRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerContract/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerContract(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerContracts");
        Optional<Broker_Contract> brokerContract  = brokerContractRepo.findById(id);
        Broker_Contract active = brokerContract.get();
        active.setActive(false);
        brokerContractRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteBrokerInfo/{id}", method = RequestMethod.GET)
    public ModelAndView deleteBrokerInfo(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/brokerInfo");
        Optional<Broker_Info> brokerInfo  = brokerInfoRepo.findById(id);
        Broker_Info active = brokerInfo.get();
        active.setActive(false);
        brokerInfoRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteClient/{id}", method = RequestMethod.GET)
    public ModelAndView deleteClient(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/client");
        Optional<Client> client  = clientRepo.findById(id);
        Client active = client.get();
        active.setActive(false);
        clientRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteIncome/{id}", method = RequestMethod.GET)
    public ModelAndView deleteIncome(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/income");
        Optional<Income> income  = incomeRepo.findById(id);
        Income active = income.get();
        active.setActive(false);
        incomeRepo.save(active);
        return mv;
    }
    @RequestMapping(value = "/deleteDrop_Off_Location/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOL(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dropOffLocation");
        Optional<Drop_Off_Location> dropOff  = dropOffLocationRepo.findById(id);
        Drop_Off_Location active = dropOff.get();
        active.setActive(false);
        dropOffLocationRepo.save(active);
        return mv;
    }
    @RequestMapping(value = "/deleteMiscellaneous/{id}", method = RequestMethod.GET)
    public ModelAndView deleteMisc(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/miscellaneous");
        Optional<Miscellaneous> misc  = miscellaneousRepo.findById(id);
        Miscellaneous active = misc.get();
        active.setActive(false);
        miscellaneousRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteDot_Inspection/{id}", method = RequestMethod.GET)
    public ModelAndView deleteDOT(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/dotInspection");
        Optional<Dot_Inspection> inspect  = dotInspectionRepo.findById(id);
       Dot_Inspection active = inspect.get();
        active.setActive(false);
        dotInspectionRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteVendor/{id}", method = RequestMethod.GET)
    public ModelAndView deleteVDE(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/Vendors");
        Optional<Vendor> vendor  = vendorRepo.findById(id);
        Vendor active = vendor.get();
        active.setActive(false);
        vendorRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteInsurance/{id}", method = RequestMethod.GET)
    public ModelAndView deleteINS(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/insurance");
        Optional<Insurance> insurance = insuranceRepo.findById(id);
        Insurance active = insurance.get();
        active.setActive(false);
        insuranceRepo.save(active);
        return mv;
    }


    @RequestMapping(value = "/deleteIncident/{id}", method = RequestMethod.GET) //Method to delete entry
    public ModelAndView deleteIncident(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/incident");
        Optional<Incident>  incident = incidentRepo.findById(id);
        Incident active = incident.get();
        active.setActive(false);
        incidentRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteTruck_Driver/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTD(@PathVariable("id") String id){
        ModelAndView mv = new ModelAndView("redirect:/truckDriver");
        Optional<Truck_Driver> driver = truckDriverRepo.findById(id);
        Truck_Driver active = driver.get();
        active.setActive(false);
        truckDriverRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEMP(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/employee");
        Optional<employee> emp = employeerepo.findById(id);
        employee active = emp.get();
        active.setActive(false);
        employeerepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteIFTA_Sticker/{id}", method = RequestMethod.GET)
    public ModelAndView deleteIFTA(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/iftaSticker");
        Optional<IFTA_Sticker> ifta = ifta_stickerRepo.findById(id);
        IFTA_Sticker active = ifta.get();
        active.setActive(false);
        ifta_stickerRepo.save(active);
        return mv;
    }
    @RequestMapping(value = "/deleteTire/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTire(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/tire");
        Optional<Tire> tire = tireRepo.findById(id);
        Tire active = tire.get();
        active.setActive(false);
        tireRepo.save(active);
        return mv;
    }
    @RequestMapping(value = "/deleteTrailer/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTrailer(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/Trailer");
        Optional<Trailer> trailer = trailerRepo.findById(id);
        Trailer active = trailer.get();
        active.setActive(false);
        trailerRepo.save(active);
        return mv;

    }
    @RequestMapping(value = "/deleteTrip_Expense/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTrip_Expense(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/TripExpense");
        Optional<Trip_Expense> tripExpense = tripExpenseRepo.findById(id);
        Trip_Expense active = tripExpense.get();
        active.setActive(false);
        tripExpenseRepo.save(active);
        return mv;

    }
    @RequestMapping(value = "/deleteTruck/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTruck(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/Truck");
        Optional<Truck> truck = truckRepo.findById(id);
        Truck active = truck.get();
        active.setActive(false);
        truckRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteEmergency_Contact/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmergency_Contact(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/emergencyContacts");
        Optional<Emergency_Contact> emergency_contact = emergencyContactRepo.findById(id);
        Emergency_Contact active = emergency_contact.get();
        active.setActive(false);
        emergencyContactRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteCountry/{id}", method = RequestMethod.GET)
    public ModelAndView deleteCountry(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/country");
        Optional<Country> country = countryRepo.findById(id);
        Country active = country.get();
        active.setActive(false);
        countryRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteEmployee_Status/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmployee_Status(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/employeeStatus");
        Optional<Employee_Status> employee_status = employeeStatusRepo.findById(id);
        Employee_Status active = employee_status.get();
        active.setActive(false);
        employeeStatusRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteInvoice/{id}", method = RequestMethod.GET)
    public ModelAndView deleteInvoice(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/invoice");
        Optional<Invoice> invoice  = invoiceRepo.findById(id);
        Invoice active = invoice.get();
        active.setActive(false);
        invoiceRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteInvoice_Status/{id}", method = RequestMethod.GET)
    public ModelAndView deleteInvoice_Status(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/invoiceStatus");
        Optional<Invoice_Status> invoice_status = invoiceStatusRepo.findById(id);
        Invoice_Status active = invoice_status.get();
        active.setActive(false);
        invoiceStatusRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteLoads/{id}", method = RequestMethod.GET)
    public ModelAndView deleteLoads(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/loads");
        Optional<Loads> loads = loadsRepo.findById(id);
        Loads active = loads.get();
        active.setActive(false);
        loadsRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteMaintenance/{id}", method = RequestMethod.GET)
    public ModelAndView deleteMaintenance(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/maintenance");
        Optional<Maintenance> maintenance = maintenanceRepo.findById(id);
        Maintenance active = maintenance.get();
        active.setActive(false);
        maintenanceRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteOffice_Position/{id}", method = RequestMethod.GET)
    public ModelAndView deleteOffice_Position(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/officePosition");
        Optional<Office_Position> officePosition = officePositionRepo.findById(id);
        Office_Position active = officePosition.get();
        active.setActive(false);
        officePositionRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deletePayroll/{id}", method = RequestMethod.GET)
    public ModelAndView deletePayrall(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/payroll");
        Optional<Payroll> payroll = payrollRepo.findById(id);
        Payroll active = payroll.get();
        active.setActive(false);
        payrollRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deletePick_Up_Location/{id}", method = RequestMethod.GET)
    public ModelAndView deletePick_Up_Location(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/puLocation");
        Optional<Pick_Up_location> pick_up_location = pickUpLocationRepo.findById(id);
        Pick_Up_location active = pick_up_location.get();
        active.setActive(false);
        pickUpLocationRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteSchedule/{id}", method = RequestMethod.GET)
    public ModelAndView deleteSchedule(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/schedule");
        Optional<Schedule> schedule = scheduleRepo.findById(id);
        Schedule active = schedule.get();
        active.setActive(false);
        scheduleRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteTire_Vendor/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTire_Vendor(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/tireVendor");
        Optional<Tire_Vendor> tire_vendor = tireVendorRepo.findById(id);
        Tire_Vendor active = tire_vendor.get();
        active.setActive(false);
        tireVendorRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteTruck_Log/{id}", method = RequestMethod.GET)
    public ModelAndView deleteTruck_Log(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/trucklog");
        Optional<Truck_Log> truck_log = truckLogRepo.findById(id);
       Truck_Log active = truck_log.get();
        active.setActive(false);
        truckLogRepo.save(active);
        return mv;
    }

    @RequestMapping(value = "/deleteSystemLogin/{id}", method = RequestMethod.GET)
    public ModelAndView deleteSystemLogin(@PathVariable("id") String id) {
        ModelAndView mv = new ModelAndView("redirect:/systemLogin");
        Optional<System_Login> system_login = systemLoginRepo.findById(id);
        System_Login active = system_login.get();
        active.setActive(false);
        systemLoginRepo.save(active);
        return mv;
    }




    // System Access Login and Registration

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
                ModelAndView mv = new ModelAndView("index");
                mv.addObject("welcome","Welcome" + " " + login.getUsername());
                return mv;
            }else if(pwd.equals(userpassword) && login.getPrivileges().equals("1")) {
                ModelAndView mv = new ModelAndView("admin");
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

    @RequestMapping(value = "/report")
    public ModelAndView report() {
        ModelAndView mv = new ModelAndView("report");

        return mv;
    }

}
