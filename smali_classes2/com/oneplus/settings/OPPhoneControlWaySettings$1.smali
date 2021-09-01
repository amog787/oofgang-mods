.class Lcom/oneplus/settings/OPPhoneControlWaySettings$1;
.super Ljava/lang/Object;
.source "OPPhoneControlWaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->access$000(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->access$100(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->access$200(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 223
    iget-object p0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;->this$0:Lcom/oneplus/settings/OPPhoneControlWaySettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->access$300(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V

    return-void
.end method
