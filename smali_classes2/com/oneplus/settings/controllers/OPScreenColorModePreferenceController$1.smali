.class Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "OPScreenColorModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/controllers/OPScreenColorModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
