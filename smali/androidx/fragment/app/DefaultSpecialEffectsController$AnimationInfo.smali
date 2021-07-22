.class Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field private final mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field private final mSignal:Landroidx/core/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 551
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;
    .locals 0

    .line 556
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    return-object p0
.end method

.method getSignal()Landroidx/core/os/CancellationSignal;
    .locals 0

    .line 561
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    return-object p0
.end method
