package optiim.models.api.customermanagement;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import javax.annotation.processing.Generated;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "identificationId",
        "issuingDate",
        "attachment",
        "identificationType",
        "@baseType",
        "@schemaLocation",
        "@type"
})
@Generated("jsonschema2pojo")
public class IndividualIdentification {

    @JsonProperty("identificationId")
    private String identificationId;
    @JsonProperty("issuingDate")
    private String issuingDate;
    @JsonProperty("attachment")
    private Attachment attachment;
    @JsonProperty("identificationType")
    private String identificationType;
    @JsonProperty("@baseType")
    private String baseType;
    @JsonProperty("@schemaLocation")
    private String schemaLocation;
    @JsonProperty("@type")
    private String type;

    @JsonProperty("identificationId")
    public String getIdentificationId() {
        return identificationId;
    }

    @JsonProperty("identificationId")
    public void setIdentificationId(String identificationId) {
        this.identificationId = identificationId;
    }

    @JsonProperty("issuingDate")
    public String getIssuingDate() {
        return issuingDate;
    }

    @JsonProperty("issuingDate")
    public void setIssuingDate(String issuingDate) {
        this.issuingDate = issuingDate;
    }

    @JsonProperty("attachment")
    public Attachment getAttachment() {
        return attachment;
    }

    @JsonProperty("attachment")
    public void setAttachment(Attachment attachment) {
        this.attachment = attachment;
    }

    @JsonProperty("identificationType")
    public String getIdentificationType() {
        return identificationType;
    }

    @JsonProperty("identificationType")
    public void setIdentificationType(String identificationType) {
        this.identificationType = identificationType;
    }

    @JsonProperty("@baseType")
    public String getBaseType() {
        return baseType;
    }

    @JsonProperty("@baseType")
    public void setBaseType(String baseType) {
        this.baseType = baseType;
    }

    @JsonProperty("@schemaLocation")
    public String getSchemaLocation() {
        return schemaLocation;
    }

    @JsonProperty("@schemaLocation")
    public void setSchemaLocation(String schemaLocation) {
        this.schemaLocation = schemaLocation;
    }

    @JsonProperty("@type")
    public String getType() {
        return type;
    }

    @JsonProperty("@type")
    public void setType(String type) {
        this.type = type;
    }
}