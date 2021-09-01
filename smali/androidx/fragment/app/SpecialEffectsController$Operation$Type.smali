.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

.field public static final enum ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

.field public static final enum HIDE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

.field public static final enum REMOVE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

.field public static final enum SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 263
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    .line 269
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    const-string v1, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->REMOVE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    .line 275
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    const-string v1, "SHOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    .line 281
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    const-string v1, "HIDE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->HIDE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    .line 257
    sget-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    aput-object v6, v1, v2

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->REMOVE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    .locals 1

    .line 257
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    .locals 1

    .line 257
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    return-object v0
.end method
