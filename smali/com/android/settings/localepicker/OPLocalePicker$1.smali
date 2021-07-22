.class Lcom/android/settings/localepicker/OPLocalePicker$1;
.super Ljava/lang/Object;
.source "OPLocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/OPLocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/OPLocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/OPLocalePicker;I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings/localepicker/OPLocalePicker;

    iput p2, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings/localepicker/OPLocalePicker;

    iget v1, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/OPLocalePicker;->removeDialog(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings/localepicker/OPLocalePicker;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 126
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings/localepicker/OPLocalePicker;

    invoke-static {p0}, Lcom/android/settings/localepicker/OPLocalePicker;->access$000(Lcom/android/settings/localepicker/OPLocalePicker;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/localepicker/OPLocalePickerBase;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method
