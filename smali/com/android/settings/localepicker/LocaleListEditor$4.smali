.class Lcom/android/settings/localepicker/LocaleListEditor$4;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 253
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/localepicker/LocaleListEditor;->access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 254
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1, p2}, Lcom/android/settings/localepicker/LocaleListEditor;->access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z

    .line 255
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    .line 256
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p0, p2}, Lcom/android/settings/localepicker/LocaleListEditor;->access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V

    return-void
.end method
