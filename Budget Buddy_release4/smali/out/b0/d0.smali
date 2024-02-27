.class public Lb0/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/d0;->a:Ljava/lang/String;

    if-nez p2, :cond_c

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    iput-object p2, p0, Lb0/d0;->b:Ljava/util/List;

    return-void
.end method

.method private e(Ljava/util/List;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lb0/d0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_28

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    move-object p0, v0

    :cond_28
    return-object p0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteProgram;)V
    .registers 7

    iget-object v0, p0, Lb0/d0;->b:Ljava/util/List;

    if-eqz v0, :cond_91

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_91

    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lb0/d0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-nez v2, :cond_1d

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_6b

    :cond_1d
    instance-of v4, v2, [B

    if-eqz v4, :cond_27

    check-cast v2, [B

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_6b

    :cond_27
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_35

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_6b

    :cond_35
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_44

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    :goto_40
    invoke-virtual {p1, v3, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_6b

    :cond_44
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_4f

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_40

    :cond_4f
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_59

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_6b

    :cond_59
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6d

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_68

    const-wide/16 v1, 0x1

    goto :goto_40

    :cond_68
    const-wide/16 v1, 0x0

    goto :goto_40

    :goto_6b
    move v1, v3

    goto :goto_9

    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": Supported types are null, byte[], double, long, boolean and String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb0/d0;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb0/d0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lb0/d0;->e(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lb0/d0;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    check-cast p1, Lb0/d0;

    iget-object v0, p0, Lb0/d0;->a:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v2, p1, Lb0/d0;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_14
    iget-object v0, p1, Lb0/d0;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_28

    return v1

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_72

    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [B

    if-eqz v2, :cond_5c

    iget-object v2, p1, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [B

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p1, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6f

    return v1

    :cond_5c
    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lb0/d0;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    return v1

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_72
    const/4 p1, 0x1

    return p1

    :cond_74
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb0/d0;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb0/d0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/d0;->b:Ljava/util/List;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_29

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb0/d0;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_29
    :goto_29
    const-string v1, ""

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
