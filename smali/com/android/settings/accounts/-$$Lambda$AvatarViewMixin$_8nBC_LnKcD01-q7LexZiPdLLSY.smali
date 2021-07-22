.class public final synthetic Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accounts/AvatarViewMixin;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accounts/AvatarViewMixin;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;->f$0:Lcom/android/settings/accounts/AvatarViewMixin;

    iput-object p2, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;->f$0:Lcom/android/settings/accounts/AvatarViewMixin;

    iget-object p0, p0, Lcom/android/settings/accounts/-$$Lambda$AvatarViewMixin$_8nBC_LnKcD01-q7LexZiPdLLSY;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AvatarViewMixin;->lambda$loadAccount$2$AvatarViewMixin(Ljava/lang/String;)V

    return-void
.end method
