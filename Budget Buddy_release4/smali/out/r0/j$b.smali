.class synthetic Lr0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lr0/j$k;->values()[Lr0/j$k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lr0/j$b;->c:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lr0/j$k;->f:Lr0/j$k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lr0/j$b;->c:[I

    sget-object v3, Lr0/j$k;->g:Lr0/j$k;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lr0/j$b;->c:[I

    sget-object v4, Lr0/j$k;->h:Lr0/j$k;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lr0/j$b;->c:[I

    sget-object v5, Lr0/j$k;->i:Lr0/j$k;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    invoke-static {}, Lr0/j$l;->values()[Lr0/j$l;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lr0/j$b;->b:[I

    :try_start_3c
    sget-object v5, Lr0/j$l;->f:Lr0/j$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v4, Lr0/j$b;->b:[I

    sget-object v5, Lr0/j$l;->g:Lr0/j$l;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    invoke-static {}, Lr0/j$f;->values()[Lr0/j$f;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lr0/j$b;->a:[I

    :try_start_57
    sget-object v5, Lr0/j$f;->f:Lr0/j$f;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v1, Lr0/j$b;->a:[I

    sget-object v4, Lr0/j$f;->g:Lr0/j$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v0, Lr0/j$b;->a:[I

    sget-object v1, Lr0/j$f;->h:Lr0/j$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v0, Lr0/j$b;->a:[I

    sget-object v1, Lr0/j$f;->i:Lr0/j$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    return-void
.end method
