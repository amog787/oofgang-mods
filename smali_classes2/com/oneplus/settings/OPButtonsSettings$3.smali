.class Lcom/oneplus/settings/OPButtonsSettings$3;
.super Ljava/lang/Object;
.source "OPButtonsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPButtonsSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPButtonsSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings$3;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 673
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings$3;->this$0:Lcom/oneplus/settings/OPButtonsSettings;

    invoke-static {p0}, Lcom/oneplus/settings/OPButtonsSettings;->access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
