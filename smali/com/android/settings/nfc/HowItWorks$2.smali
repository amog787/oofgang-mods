.class Lcom/android/settings/nfc/HowItWorks$2;
.super Ljava/lang/Object;
.source "HowItWorks.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/HowItWorks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/HowItWorks;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/HowItWorks;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/nfc/HowItWorks$2;->this$0:Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/nfc/HowItWorks$2;->this$0:Lcom/android/settings/nfc/HowItWorks;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
