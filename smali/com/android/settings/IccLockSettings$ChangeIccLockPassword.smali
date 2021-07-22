.class Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;
.super Landroid/os/AsyncTask;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeIccLockPassword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttemptsRemaining:I

.field private final mNewPwd:Ljava/lang/String;

.field private final mOldPwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mOldPwd:Ljava/lang/String;

    .line 622
    iput-object p3, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mNewPwd:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/IccLockSettings$1;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;-><init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 615
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 627
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 628
    iget-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mOldPwd:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mNewPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mAttemptsRemaining:I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 615
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 634
    iget p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->mAttemptsRemaining:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 635
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;ZI)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object p0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPassword;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;ZI)V

    :goto_0
    return-void
.end method
