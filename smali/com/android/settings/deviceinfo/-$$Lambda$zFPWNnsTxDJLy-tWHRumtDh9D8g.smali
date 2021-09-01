.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/deviceinfo/StorageWizardBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;->f$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;->f$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onNavigateNext(Landroid/view/View;)V

    return-void
.end method
