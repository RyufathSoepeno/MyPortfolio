.class public final Landroidx/window/core/Version$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Landroidx/window/core/Version$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCURRENT()Landroidx/window/core/Version;
    .registers 2

    invoke-static {}, Landroidx/window/core/Version;->access$getCURRENT$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getUNKNOWN()Landroidx/window/core/Version;
    .registers 2

    invoke-static {}, Landroidx/window/core/Version;->access$getUNKNOWN$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getVERSION_0_1()Landroidx/window/core/Version;
    .registers 2

    invoke-static {}, Landroidx/window/core/Version;->access$getVERSION_0_1$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final getVERSION_1_0()Landroidx/window/core/Version;
    .registers 2

    invoke-static {}, Landroidx/window/core/Version;->access$getVERSION_1_0$cp()Landroidx/window/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Landroidx/window/core/Version;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_80

    invoke-static {p1}, Lp1/d;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_80

    :cond_b
    const-string v1, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1c

    return-object v0

    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move-object v1, v0

    goto :goto_2d

    :cond_25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2d
    if-nez v1, :cond_30

    return-object v0

    :cond_30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    move-object v1, v0

    goto :goto_45

    :cond_3d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_45
    if-nez v1, :cond_48

    return-object v0

    :cond_48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_55

    move-object v1, v0

    goto :goto_5d

    :cond_55
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5d
    if-nez v1, :cond_60

    return-object v0

    :cond_60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_72

    :cond_70
    const-string p1, ""

    :goto_72
    move-object v6, p1

    new-instance p1, Landroidx/window/core/Version;

    const-string v0, "description"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;Lkotlin/jvm/internal/g;)V

    return-object p1

    :cond_80
    :goto_80
    return-object v0
.end method
