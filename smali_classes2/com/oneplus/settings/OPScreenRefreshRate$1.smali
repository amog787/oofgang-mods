.class Lcom/oneplus/settings/OPScreenRefreshRate$1;
.super Ljava/lang/Object;
.source "OPScreenRefreshRate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPScreenRefreshRate;->delayRefreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPScreenRefreshRate;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPScreenRefreshRate;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oneplus/settings/OPScreenRefreshRate$1;->this$0:Lcom/oneplus/settings/OPScreenRefreshRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate$1;->this$0:Lcom/oneplus/settings/OPScreenRefreshRate;

    invoke-static {v0}, Lcom/oneplus/settings/OPScreenRefreshRate;->access$000(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenRefreshRate$1;->this$0:Lcom/oneplus/settings/OPScreenRefreshRate;

    invoke-static {v0}, Lcom/oneplus/settings/OPScreenRefreshRate;->access$100(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 116
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenRefreshRate$1;->this$0:Lcom/oneplus/settings/OPScreenRefreshRate;

    invoke-static {p0}, Lcom/oneplus/settings/OPScreenRefreshRate;->access$200(Lcom/oneplus/settings/OPScreenRefreshRate;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
