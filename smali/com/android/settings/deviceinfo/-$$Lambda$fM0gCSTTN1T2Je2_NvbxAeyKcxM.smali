.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;
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

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;->f$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;->f$0:Lcom/android/settings/deviceinfo/StorageWizardBase;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onNavigateBack(Landroid/view/View;)V

    return-void
.end method
