.class Lcom/oneplus/settings/ui/OPCustomClockPreference$2;
.super Ljava/lang/Object;
.source "OPCustomClockPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPCustomClockPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 354
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget p1, p1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    .line 355
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/utils/OpCanvasAodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->isCanvasAodEnabled()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "OPCustomClockPreference"

    const-string v0, "canvas aod is enabled, needs user to confirm."

    .line 358
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$300(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/utils/OpCanvasAodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->getConfirmDialogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$400(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$400(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "start canvas aod dialog occur error"

    .line 366
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference$2;->this$0:Lcom/oneplus/settings/ui/OPCustomClockPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    :cond_1
    :goto_0
    return-void
.end method
