.class public final Lsis/you/zta/zta/you/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final cno:J = 0x4L

.field public static final rtg:J = 0x3L

.field public static final sis:J = 0x1L

.field public static final ssp:J = 0x3L

.field public static final tsu:J = 0x2L

.field public static final you:J = 0x1L

.field public static final zta:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final you(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "DISPLAY_PRIMARY"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "DISPLAY_EXTERNAL"

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const-string p0, "DISPLAY_PLUGGABLE"

    return-object p0

    :cond_2
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    const-string p0, "DISPLAY_VIRTUAL"

    return-object p0

    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    const-string p0, "DISPLAY_BUILTIN_2"

    return-object p0

    :cond_4
    if-nez v0, :cond_5

    const-string p0, "DISPLAY_SECONDARY"

    return-object p0

    :cond_5
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    const-string p0, "DISPLAY_EXTERNAL_2"

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zta(J)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DISPLAY_PRIMARY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1

    and-long v3, p0, v1

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    const-string v4, "DISPLAY_EXTERNAL"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v4, v1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "DISPLAY_PLUGGABLE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v4, v1

    :cond_1
    const-wide/16 v1, 0x2

    and-long v6, p0, v1

    cmp-long v3, v6, v1

    if-nez v3, :cond_2

    const-string v3, "DISPLAY_VIRTUAL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v4, v1

    :cond_2
    const-wide/16 v1, 0x3

    and-long v6, p0, v1

    cmp-long v3, v6, v1

    if-nez v3, :cond_3

    const-string v6, "DISPLAY_BUILTIN_2"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v4, v1

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "DISPLAY_SECONDARY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v4, v1

    :cond_4
    const-wide/16 v1, 0x4

    and-long v6, p0, v1

    cmp-long v3, v6, v1

    if-nez v3, :cond_5

    const-string v3, "DISPLAY_EXTERNAL_2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-long/2addr v4, v1

    :cond_5
    cmp-long v1, p0, v4

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-long v2, v4

    and-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
