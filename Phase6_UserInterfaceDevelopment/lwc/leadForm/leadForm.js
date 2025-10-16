import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class LeadForm extends LightningElement {
    @track name;
    @track email;
    handleChange(event) {
        const field = event.target.label;
        if(field === 'Name') this.name = event.target.value;
        if(field === 'Email') this.email = event.target.value;
    }
    handleSubmit() {
        this.dispatchEvent(new ShowToastEvent({
            title: 'Success',
            message: 'Lead created successfully!',
            variant: 'success'
        }));
    }
}