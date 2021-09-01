.class public Landroidx/slice/SliceSpecs;
.super Ljava/lang/Object;
.source "SliceSpecs.java"


# static fields
.field public static final BASIC:Landroidx/slice/SliceSpec;

.field public static final LIST:Landroidx/slice/SliceSpec;

.field public static final LIST_V2:Landroidx/slice/SliceSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    .line 39
    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.slice.LIST"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    .line 44
    new-instance v0, Landroidx/slice/SliceSpec;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    return-void
.end method
