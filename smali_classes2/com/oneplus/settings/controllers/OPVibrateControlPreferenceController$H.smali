.class final Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;
.super Landroid/os/Handler;
.source "OPVibrateControlPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;-><init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 162
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;->this$0:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;

    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method
