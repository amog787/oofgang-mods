.class Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "OPScreenRefreshRatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPScreenRefreshRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
