.class Landroidx/fragment/app/FragmentManager$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/SpecialEffectsControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 0

    .line 464
    new-instance p0, Landroidx/fragment/app/DefaultSpecialEffectsController;

    invoke-direct {p0, p1}, Landroidx/fragment/app/DefaultSpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-object p0
.end method
