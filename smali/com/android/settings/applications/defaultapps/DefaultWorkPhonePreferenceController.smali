.class public Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;
.source "DefaultWorkPhonePreferenceController.java"


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "work_default_phone_app"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method
