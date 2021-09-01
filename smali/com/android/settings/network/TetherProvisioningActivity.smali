.class public Lcom/android/settings/network/TetherProvisioningActivity;
.super Landroid/app/Activity;
.source "TetherProvisioningActivity.java"


# static fields
.field private static final DEBUG:Z

.field static final EXTRA_TETHER_SUBID:Ljava/lang/String; = "android.net.extra.TETHER_SUBID"

.field public static final EXTRA_TETHER_UI_PROVISIONING_APP_NAME:Ljava/lang/String; = "android.net.extra.TETHER_UI_PROVISIONING_APP_NAME"

.field static final PROVISION_REQUEST:I


# instance fields
.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherProvisioningAct"

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/TetherProvisioningActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_2

    .line 103
    sget-boolean p1, Lcom/android/settings/network/TetherProvisioningActivity;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got result from app: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TetherProvisioningAct"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/android/settings/network/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraProvisionCallback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/settings/network/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extraAddTetherType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.net.extra.TETHER_SUBID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 66
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    const-string v5, "TetherProvisioningAct"

    if-eq v1, v2, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This Provisioning request is outdated, current subId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "android.net.extra.TETHER_UI_PROVISIONING_APP_NAME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 75
    array-length v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 80
    aget-object v8, v1, v7

    const/4 v9, 0x1

    aget-object v10, v1, v9

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "TETHER_TYPE"

    .line 81
    invoke-virtual {v6, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 82
    invoke-virtual {v6, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/android/settings/network/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    sget-boolean p1, Lcom/android/settings/network/TetherProvisioningActivity;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting provisioning app: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Provisioning app is configured, but not available."

    .line 90
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/android/settings/network/TetherProvisioningActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 96
    :cond_3
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v6, v7, p1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void

    :cond_4
    :goto_0
    const-string p0, "Unexpected provision app configuration"

    .line 76
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
