.class Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;
.super Ljava/lang/Object;
.source "ToggleScreenDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->initializeDialogCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->access$000(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->access$100(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;Z)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->access$200(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optInAllMagnificationValuesToSettings(Landroid/content/Context;I)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->access$200(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)I

    move-result v0

    not-int v0, v0

    invoke-static {p1, v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->optOutAllMagnificationValuesFromSettings(Landroid/content/Context;I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleScreenDetailActivity;->access$300(Lcom/android/settings/accessibility/ToggleScreenDetailActivity;)V

    .line 166
    :goto_0
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenDetailActivity$1;->this$0:Lcom/android/settings/accessibility/ToggleScreenDetailActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
