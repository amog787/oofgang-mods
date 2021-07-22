.class Lcom/oneplus/security/network/NetworkPolicyEditor$1;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/NetworkPolicyEditor;->writeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/NetworkPolicyEditor;

.field final synthetic val$policies:[Landroid/net/NetworkPolicy;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/oneplus/security/network/NetworkPolicyEditor$1;->this$0:Lcom/oneplus/security/network/NetworkPolicyEditor;

    iput-object p2, p0, Lcom/oneplus/security/network/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oneplus/security/network/NetworkPolicyEditor$1;->this$0:Lcom/oneplus/security/network/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/oneplus/security/network/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-virtual {v0, p0}, Lcom/oneplus/security/network/NetworkPolicyEditor;->write([Landroid/net/NetworkPolicy;)V

    return-void
.end method
