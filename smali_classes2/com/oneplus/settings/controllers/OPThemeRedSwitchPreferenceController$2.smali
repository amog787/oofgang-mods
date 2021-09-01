.class Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;
.super Ljava/lang/Object;
.source "OPThemeRedSwitchPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;Ljava/lang/Object;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->access$300(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->access$100(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;Ljava/lang/Object;)V

    .line 120
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->access$200(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V

    return-void
.end method
