.class Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;
.super Ljava/lang/Object;
.source "LocalePickerWithRegionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$1;->this$0:Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->onBackPressed()V

    return-void
.end method
