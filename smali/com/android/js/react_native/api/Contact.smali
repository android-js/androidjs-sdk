.class public Lcom/android/js/react_native/api/Contact;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "Contact.java"


# instance fields
.field private contact:Lcom/android/js/api/Contact;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 15
    iput-object p1, p0, Lcom/android/js/react_native/api/Contact;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 16
    new-instance v0, Lcom/android/js/api/Contact;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/js/api/Contact;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/js/react_native/api/Contact;->contact:Lcom/android/js/api/Contact;

    .line 17
    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/js/react_native/api/Contact;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/js/api/Contact;->addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p1, "force"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/android/js/react_native/api/Contact;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/js/react_native/api/Contact;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0, p1}, Lcom/android/js/api/Contact;->getContactByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCount()I
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/js/react_native/api/Contact;->contact:Lcom/android/js/api/Contact;

    invoke-virtual {v0}, Lcom/android/js/api/Contact;->getContactsCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Contact"

    return-object v0
.end method
