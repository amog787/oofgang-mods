.class Lcom/oneplus/security/network/view/BaseTabActivity$4;
.super Landroid/database/ContentObserver;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/network/view/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/BaseTabActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/BaseTabActivity;Landroid/os/Handler;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/oneplus/security/network/view/BaseTabActivity$4;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "BaseTabActivity"

    const-string v0, "mDarkModeObserver onChange"

    .line 178
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/oneplus/security/network/view/BaseTabActivity$4;->this$0:Lcom/oneplus/security/network/view/BaseTabActivity;

    invoke-static {p0}, Lcom/oneplus/security/network/view/BaseTabActivity;->access$000(Lcom/oneplus/security/network/view/BaseTabActivity;)V

    return-void
.end method
