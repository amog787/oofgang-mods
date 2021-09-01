.class Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;
.super Ljava/lang/Object;
.source "OPThemeMCLSwitchPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OPThemeMCLSwitchPreferenceController"

    const-string v1, "switchToMclTheme"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$100(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V

    .line 101
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$200(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V

    return-void
.end method
