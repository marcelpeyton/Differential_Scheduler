import { Appointment } from '../../../server/src/models/AppointmentClass.js';
const ServiceSelection = () => {
    return (
      <section>
        <h1>Service Selection</h1>
      </section>
    );
  };

  const newAppointment = new Appointment(); 

  newAppointment.calculateTime();
  
  export default ServiceSelection;