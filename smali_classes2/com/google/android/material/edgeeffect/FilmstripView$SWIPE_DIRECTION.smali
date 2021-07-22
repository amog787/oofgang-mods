.class final enum Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;
.super Ljava/lang/Enum;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SWIPE_DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

.field public static final enum LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

.field public static final enum RIGHT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    .line 71
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->RIGHT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    .line 68
    sget-object v4, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->$VALUES:[Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;
    .locals 1

    .line 68
    const-class v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->$VALUES:[Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    invoke-virtual {v0}, [Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    return-object v0
.end method
