.class Lcom/oneplus/security/network/view/BaseTabActivity$2;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Lcom/oneplus/security/utils/TabUtils$OnSetupTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/BaseTabActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/BaseTabActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$2;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupTab(ILcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$2;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/security/network/view/BaseTabActivity;->setupTab(ILcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
