.class public final enum Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;
.super Ljava/lang/Enum;
.source "AnimationGriditemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/recyclerview/AnimationGriditemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadiusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

.field public static final enum NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

.field public static final enum RADIUS:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 38
    new-instance v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    const-string v1, "RADIUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->RADIUS:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    .line 36
    sget-object v4, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->NONE:Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->$VALUES:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;
    .locals 1

    .line 36
    const-class v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->$VALUES:[Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    invoke-virtual {v0}, [Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/recyclerview/AnimationGriditemView$RadiusMode;

    return-object v0
.end method
