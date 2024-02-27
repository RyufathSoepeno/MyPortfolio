.class Lb0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static n:Ljava/lang/Boolean;


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;

.field final c:I

.field final d:I

.field final e:Landroid/content/Context;

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld0/g;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lb0/t;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lb0/o;

.field i:Landroid/database/sqlite/SQLiteDatabase;

.field private j:I

.field private k:I

.field private l:Ljava/lang/Integer;

.field private m:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb0/i;->f:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb0/i;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lb0/i;->j:I

    iput v0, p0, Lb0/i;->k:I

    iput v0, p0, Lb0/i;->m:I

    iput-object p1, p0, Lb0/i;->e:Landroid/content/Context;

    iput-object p2, p0, Lb0/i;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lb0/i;->a:Z

    iput p3, p0, Lb0/i;->c:I

    iput p5, p0, Lb0/i;->d:I

    return-void
.end method

.method private static synthetic E(Lb0/d0;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .registers 5

    invoke-virtual {p0, p4}, Lb0/d0;->a(Landroid/database/sqlite/SQLiteProgram;)V

    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method

.method private synthetic F(Ld0/e;)V
    .registers 6

    invoke-interface {p1}, Ld0/e;->f()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ld0/e;->h()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_23

    iget v3, p0, Lb0/i;->k:I

    add-int/2addr v3, v2

    iput v3, p0, Lb0/i;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lb0/i;->l:Ljava/lang/Integer;

    :cond_23
    invoke-direct {p0, p1}, Lb0/i;->v(Ld0/e;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    if-eqz v1, :cond_4e

    iput-object v3, p0, Lb0/i;->l:Ljava/lang/Integer;

    goto :goto_4e

    :cond_2f
    if-eqz v1, :cond_41

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lb0/i;->l:Ljava/lang/Integer;

    const-string v2, "transactionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ld0/f;->a(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iput-object v3, p0, Lb0/i;->l:Ljava/lang/Integer;

    :cond_4b
    invoke-interface {p1, v3}, Ld0/f;->a(Ljava/lang/Object;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private synthetic G(Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->p(Ld0/e;)Z

    return-void
.end method

.method private synthetic H(Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->q(Ld0/e;)Z

    return-void
.end method

.method private synthetic I(Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->r(Ld0/e;)Z

    return-void
.end method

.method private synthetic J(Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->s(Ld0/e;)Z

    return-void
.end method

.method private O()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lb0/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lb0/i;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    goto :goto_1f

    :cond_d
    iget-object v0, p0, Lb0/i;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/g;

    invoke-virtual {v0}, Ld0/g;->a()V

    iget-object v0, p0, Lb0/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private Q(Ld0/e;Ljava/lang/Runnable;)V
    .registers 5

    invoke-interface {p1}, Ld0/e;->g()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lb0/i;->l:Ljava/lang/Integer;

    if-nez v1, :cond_c

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3f

    :cond_c
    if-eqz v0, :cond_35

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    :cond_1b
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lb0/i;->l:Ljava/lang/Integer;

    if-nez p1, :cond_3f

    iget-object p1, p0, Lb0/i;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lb0/i;->h:Lb0/o;

    new-instance p2, Lb0/h;

    invoke-direct {p2, p0}, Lb0/h;-><init>(Lb0/i;)V

    invoke-interface {p1, p0, p2}, Lb0/o;->a(Lb0/i;Ljava/lang/Runnable;)V

    goto :goto_3f

    :cond_35
    new-instance v0, Ld0/g;

    invoke-direct {v0, p1, p2}, Ld0/g;-><init>(Ld0/e;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lb0/i;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static synthetic a(Lb0/i;Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->G(Ld0/e;)V

    return-void
.end method

.method public static synthetic b(Lb0/i;Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->I(Ld0/e;)V

    return-void
.end method

.method public static synthetic c(Lb0/i;Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->H(Ld0/e;)V

    return-void
.end method

.method public static synthetic d(Lb0/i;)V
    .registers 1

    invoke-direct {p0}, Lb0/i;->O()V

    return-void
.end method

.method public static synthetic e(Lb0/d0;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lb0/i;->E(Lb0/d0;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lb0/i;Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->J(Ld0/e;)V

    return-void
.end method

.method public static synthetic g(Lb0/i;Ld0/e;)V
    .registers 2

    invoke-direct {p0, p1}, Lb0/i;->F(Ld0/e;)V

    return-void
.end method

.method protected static i(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.tekartik.sqflite.wal_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1b

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    return v0
.end method

.method private k(I)V
    .registers 3

    iget-object v0, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/t;

    if-eqz p1, :cond_11

    invoke-direct {p0, p1}, Lb0/i;->l(Lb0/t;)V

    :cond_11
    return-void
.end method

.method private l(Lb0/t;)V
    .registers 6

    :try_start_0
    iget v0, p1, Lb0/t;->a:I

    iget v1, p0, Lb0/i;->d:I

    invoke-static {v1}, Lb0/r;->c(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Sqflite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "closing cursor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v1, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lb0/t;->c:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

.method private m(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_42

    if-nez v0, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "columns"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rows"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :cond_2f
    invoke-static {p1, v2}, Lb0/e0;->a(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_4

    :cond_42
    if-nez v0, :cond_49

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_49
    return-object v0
.end method

.method static n(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    return-void
.end method

.method private o(Ld0/e;)Z
    .registers 3

    invoke-direct {p0, p1}, Lb0/i;->v(Ld0/e;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld0/f;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private p(Ld0/e;)Z
    .registers 11

    invoke-direct {p0, p1}, Lb0/i;->v(Ld0/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Ld0/e;->e()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    invoke-interface {p1, v2}, Ld0/f;->a(Ljava/lang/Object;)V

    return v3

    :cond_14
    const-string v0, "SELECT changes(), last_insert_rowid()"

    :try_start_16
    invoke-virtual {p0}, Lb0/i;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_be
    .catchall {:try_start_16 .. :try_end_1e} :catchall_bc

    const-string v4, "Sqflite"

    if-eqz v0, :cond_9b

    :try_start_22
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_9b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_67

    iget v5, p0, Lb0/i;->d:I

    invoke-static {v5}, Lb0/r;->b(I)Z

    move-result v5

    if-eqz v5, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "no changes (id was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-interface {p1, v2}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_63} :catch_99
    .catchall {:try_start_22 .. :try_end_63} :catchall_cb

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v3

    :cond_67
    :try_start_67
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget v2, p0, Lb0/i;->d:I

    invoke-static {v2}, Lb0/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "inserted "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_95} :catch_99
    .catchall {:try_start_67 .. :try_end_95} :catchall_cb

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v3

    :catch_99
    move-exception v2

    goto :goto_c2

    :cond_9b
    :try_start_9b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fail to read changes for Insert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b6} :catch_99
    .catchall {:try_start_9b .. :try_end_b6} :catchall_cb

    if-eqz v0, :cond_bb

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bb
    return v3

    :catchall_bc
    move-exception p1

    goto :goto_cd

    :catch_be
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_c2
    :try_start_c2
    invoke-virtual {p0, v2, p1}, Lb0/i;->B(Ljava/lang/Exception;Ld0/e;)V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_cb

    if-eqz v0, :cond_ca

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ca
    return v1

    :catchall_cb
    move-exception p1

    move-object v2, v0

    :goto_cd
    if-eqz v2, :cond_d2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw p1
.end method

.method private q(Ld0/e;)Z
    .registers 11

    const-string v0, "cursorPageSize"

    invoke-interface {p1, v0}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1}, Ld0/e;->d()Lb0/d0;

    move-result-object v1

    iget v2, p0, Lb0/i;->d:I

    invoke-static {v2}, Lb0/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sqflite"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2e
    invoke-virtual {p0}, Lb0/i;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lb0/f;

    invoke-direct {v5, v1}, Lb0/f;-><init>(Lb0/d0;)V

    invoke-virtual {v1}, Lb0/d0;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lb0/a;->a:[Ljava/lang/String;

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_41} :catch_91
    .catchall {:try_start_2e .. :try_end_41} :catchall_8e

    :try_start_41
    invoke-direct {p0, v1, v0}, Lb0/i;->m(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v0, :cond_56

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-nez v6, :cond_56

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_56

    const/4 v6, 0x1

    goto :goto_57

    :cond_56
    const/4 v6, 0x0

    :goto_57
    if-eqz v6, :cond_81

    iget v6, p0, Lb0/i;->m:I

    add-int/2addr v6, v5

    iput v6, p0, Lb0/i;->m:I

    const-string v7, "cursorId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lb0/t;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v7, v6, v0, v1}, Lb0/t;-><init>(IILandroid/database/Cursor;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_70} :catch_8c
    .catchall {:try_start_41 .. :try_end_70} :catchall_a3

    :try_start_70
    iget-object v0, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_7e
    .catchall {:try_start_70 .. :try_end_79} :catchall_7b

    move-object v2, v7

    goto :goto_81

    :catchall_7b
    move-exception p1

    move-object v2, v7

    goto :goto_a4

    :catch_7e
    move-exception v0

    move-object v2, v7

    goto :goto_93

    :cond_81
    :goto_81
    :try_start_81
    invoke-interface {p1, v4}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_8c
    .catchall {:try_start_81 .. :try_end_84} :catchall_a3

    if-nez v2, :cond_8b

    if-eqz v1, :cond_8b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8b
    return v5

    :catch_8c
    move-exception v0

    goto :goto_93

    :catchall_8e
    move-exception p1

    move-object v1, v2

    goto :goto_a4

    :catch_91
    move-exception v0

    move-object v1, v2

    :goto_93
    :try_start_93
    invoke-virtual {p0, v0, p1}, Lb0/i;->B(Ljava/lang/Exception;Ld0/e;)V

    if-eqz v2, :cond_9b

    invoke-direct {p0, v2}, Lb0/i;->l(Lb0/t;)V
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_a3

    :cond_9b
    if-nez v2, :cond_a2

    if-eqz v1, :cond_a2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a2
    return v3

    :catchall_a3
    move-exception p1

    :goto_a4
    if-nez v2, :cond_ab

    if-eqz v1, :cond_ab

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ab
    throw p1
.end method

.method private r(Ld0/e;)Z
    .registers 11

    const-string v0, "cursorId"

    invoke-interface {p1, v0}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "cancel"

    invoke-interface {p1, v3}, Ld0/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget v3, p0, Lb0/i;->d:I

    invoke-static {v3}, Lb0/r;->c(I)Z

    move-result v3

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "cursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_39

    const-string v4, " cancel"

    goto :goto_3b

    :cond_39
    const-string v4, " next"

    :goto_3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sqflite"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_52

    invoke-direct {p0, v1}, Lb0/i;->k(I)V

    invoke-interface {p1, v3}, Ld0/f;->a(Ljava/lang/Object;)V

    return v4

    :cond_52
    iget-object v2, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/t;

    const/4 v5, 0x0

    if-eqz v2, :cond_95

    :try_start_61
    iget-object v6, v2, Lb0/t;->c:Landroid/database/Cursor;

    iget v7, v2, Lb0/t;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lb0/i;->m(Landroid/database/Cursor;Ljava/lang/Integer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v8

    if-nez v8, :cond_7b

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_77} :catch_92
    .catchall {:try_start_61 .. :try_end_77} :catchall_90

    if-nez v6, :cond_7b

    const/4 v6, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v6, 0x0

    :goto_7c
    if-eqz v6, :cond_85

    :try_start_7e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    invoke-interface {p1, v7}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_8e
    .catchall {:try_start_7e .. :try_end_88} :catchall_c3

    if-nez v6, :cond_8d

    invoke-direct {p0, v2}, Lb0/i;->l(Lb0/t;)V

    :cond_8d
    return v4

    :catch_8e
    move-exception v0

    goto :goto_b1

    :catchall_90
    move-exception p1

    goto :goto_c5

    :catch_92
    move-exception v0

    const/4 v6, 0x0

    goto :goto_b1

    :cond_95
    :try_start_95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b1} :catch_92
    .catchall {:try_start_95 .. :try_end_b1} :catchall_90

    :goto_b1
    :try_start_b1
    invoke-virtual {p0, v0, p1}, Lb0/i;->B(Ljava/lang/Exception;Ld0/e;)V

    if-eqz v2, :cond_ba

    invoke-direct {p0, v2}, Lb0/i;->l(Lb0/t;)V
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_c3

    goto :goto_bb

    :cond_ba
    move-object v3, v2

    :goto_bb
    if-nez v6, :cond_c2

    if-eqz v3, :cond_c2

    invoke-direct {p0, v3}, Lb0/i;->l(Lb0/t;)V

    :cond_c2
    return v5

    :catchall_c3
    move-exception p1

    move v5, v6

    :goto_c5
    if-nez v5, :cond_cc

    if-eqz v2, :cond_cc

    invoke-direct {p0, v2}, Lb0/i;->l(Lb0/t;)V

    :cond_cc
    throw p1
.end method

.method private s(Ld0/e;)Z
    .registers 9

    invoke-direct {p0, p1}, Lb0/i;->v(Ld0/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1}, Ld0/e;->e()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    invoke-interface {p1, v3}, Ld0/f;->a(Ljava/lang/Object;)V

    return v2

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lb0/i;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "SELECT changes()"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_89
    .catchall {:try_start_14 .. :try_end_1e} :catchall_87

    const-string v4, "Sqflite"

    if-eqz v0, :cond_66

    :try_start_22
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_66

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget v5, p0, Lb0/i;->d:I

    invoke-static {v5}, Lb0/r;->b(I)Z

    move-result v5

    if-eqz v5, :cond_55

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5c} :catch_63
    .catchall {:try_start_22 .. :try_end_5c} :catchall_60

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_60
    move-exception p1

    move-object v3, v0

    goto :goto_93

    :catch_63
    move-exception v2

    move-object v3, v0

    goto :goto_8a

    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fail to read changes for Update/Delete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v3}, Ld0/f;->a(Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_81} :catch_63
    .catchall {:try_start_66 .. :try_end_81} :catchall_60

    if-eqz v0, :cond_86

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_86
    return v2

    :catchall_87
    move-exception p1

    goto :goto_93

    :catch_89
    move-exception v2

    :goto_8a
    :try_start_8a
    invoke-virtual {p0, v2, p1}, Lb0/i;->B(Ljava/lang/Exception;Ld0/e;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_87

    if-eqz v3, :cond_92

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_92
    return v1

    :goto_93
    if-eqz v3, :cond_98

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_98
    throw p1
.end method

.method private v(Ld0/e;)Z
    .registers 6

    invoke-interface {p1}, Ld0/e;->d()Lb0/d0;

    move-result-object v0

    iget v1, p0, Lb0/i;->d:I

    invoke-static {v1}, Lb0/r;->b(I)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sqflite"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-interface {p1}, Ld0/e;->f()Ljava/lang/Boolean;

    move-result-object v1

    :try_start_28
    invoke-virtual {p0}, Lb0/i;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lb0/d0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lb0/d0;->d()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lb0/i;->t(Ljava/lang/Boolean;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3c

    const/4 p1, 0x1

    return p1

    :catch_3c
    move-exception v0

    invoke-virtual {p0, v0, p1}, Lb0/i;->B(Ljava/lang/Exception;Ld0/e;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static w(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public A()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lb0/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method B(Ljava/lang/Exception;Ld0/e;)V
    .registers 5

    instance-of v0, p1, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    const-string v1, "sqlite_error"

    if-eqz v0, :cond_1e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open_failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb0/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1a
    invoke-interface {p2, v1, p1, v0}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1e
    instance-of v0, p1, Landroid/database/SQLException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ld0/h;->a(Ld0/e;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1a
.end method

.method public C(Ld0/e;)V
    .registers 3

    new-instance v0, Lb0/d;

    invoke-direct {v0, p0, p1}, Lb0/d;-><init>(Lb0/i;Ld0/e;)V

    invoke-direct {p0, p1, v0}, Lb0/i;->Q(Ld0/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized D()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lb0/i;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public K()V
    .registers 4

    sget-object v0, Lb0/i;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    iget-object v0, p0, Lb0/i;->e:Landroid/content/Context;

    invoke-static {v0}, Lb0/i;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lb0/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lb0/i;->d:I

    invoke-static {v0}, Lb0/r;->c(I)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[sqflite] WAL enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sqflite"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    sget-object v0, Lb0/i;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    const/high16 v0, 0x30000000

    goto :goto_45

    :cond_43
    const/high16 v0, 0x10000000

    :goto_45
    iget-object v1, p0, Lb0/i;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lb0/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public L()V
    .registers 5

    iget-object v0, p0, Lb0/i;->b:Ljava/lang/String;

    new-instance v1, Lb0/i$a;

    invoke-direct {v1, p0}, Lb0/i$a;-><init>(Lb0/i;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lb0/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public M(Ld0/e;)V
    .registers 3

    new-instance v0, Lb0/e;

    invoke-direct {v0, p0, p1}, Lb0/e;-><init>(Lb0/i;Ld0/e;)V

    invoke-direct {p0, p1, v0}, Lb0/i;->Q(Ld0/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method public N(Ld0/e;)V
    .registers 3

    new-instance v0, Lb0/b;

    invoke-direct {v0, p0, p1}, Lb0/b;-><init>(Lb0/i;Ld0/e;)V

    invoke-direct {p0, p1, v0}, Lb0/i;->Q(Ld0/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method public P(Ld0/e;)V
    .registers 3

    new-instance v0, Lb0/g;

    invoke-direct {v0, p0, p1}, Lb0/g;-><init>(Lb0/i;Ld0/e;)V

    invoke-direct {p0, p1, v0}, Lb0/i;->Q(Ld0/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method h(Ls0/i;Ls0/j$d;)V
    .registers 11

    new-instance v0, Ld0/d;

    invoke-direct {v0, p1, p2}, Ld0/d;-><init>(Ls0/i;Ls0/j$d;)V

    invoke-virtual {v0}, Ld0/b;->e()Z

    move-result p1

    invoke-virtual {v0}, Ld0/b;->k()Z

    move-result v1

    const-string v2, "operations"

    invoke-virtual {v0, v2}, Ld0/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v5, Ld0/c;

    invoke-direct {v5, v3, p1}, Ld0/c;-><init>(Ljava/util/Map;Z)V

    invoke-virtual {v5}, Ld0/c;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    goto :goto_6b

    :sswitch_40
    const-string v7, "query"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    goto :goto_6b

    :cond_49
    const/4 v6, 0x3

    goto :goto_6b

    :sswitch_4b
    const-string v7, "update"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    goto :goto_6b

    :cond_54
    const/4 v6, 0x2

    goto :goto_6b

    :sswitch_56
    const-string v7, "insert"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    goto :goto_6b

    :cond_5f
    const/4 v6, 0x1

    goto :goto_6b

    :sswitch_61
    const-string v7, "execute"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v6, 0x0

    :goto_6b
    packed-switch v6, :pswitch_data_e6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Batch method \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bad_param"

    invoke-interface {p2, v0, p1, v4}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_8a
    invoke-direct {p0, v5}, Lb0/i;->q(Ld0/e;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_ba

    :cond_91
    if-eqz v1, :cond_94

    goto :goto_af

    :cond_94
    invoke-virtual {v5, p2}, Ld0/c;->q(Ls0/j$d;)V

    return-void

    :pswitch_98
    invoke-direct {p0, v5}, Lb0/i;->s(Ld0/e;)Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_ba

    :cond_9f
    if-eqz v1, :cond_a2

    goto :goto_af

    :cond_a2
    invoke-virtual {v5, p2}, Ld0/c;->q(Ls0/j$d;)V

    return-void

    :pswitch_a6
    invoke-direct {p0, v5}, Lb0/i;->p(Ld0/e;)Z

    move-result v3

    if-eqz v3, :cond_ad

    goto :goto_ba

    :cond_ad
    if-eqz v1, :cond_b0

    :goto_af
    goto :goto_c1

    :cond_b0
    invoke-virtual {v5, p2}, Ld0/c;->q(Ls0/j$d;)V

    return-void

    :pswitch_b4
    invoke-direct {p0, v5}, Lb0/i;->o(Ld0/e;)Z

    move-result v3

    if-eqz v3, :cond_bf

    :goto_ba
    invoke-virtual {v5, v2}, Ld0/c;->s(Ljava/util/List;)V

    goto/16 :goto_1e

    :cond_bf
    if-eqz v1, :cond_c6

    :goto_c1
    invoke-virtual {v5, v2}, Ld0/c;->r(Ljava/util/List;)V

    goto/16 :goto_1e

    :cond_c6
    invoke-virtual {v5, p2}, Ld0/c;->q(Ls0/j$d;)V

    return-void

    :cond_ca
    if-eqz p1, :cond_d0

    invoke-interface {p2, v4}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto :goto_d3

    :cond_d0
    invoke-interface {p2, v2}, Ls0/j$d;->a(Ljava/lang/Object;)V

    :goto_d3
    return-void

    :sswitch_data_d4
    .sparse-switch
        -0x4ea7088b -> :sswitch_61
        -0x468f3d47 -> :sswitch_56
        -0x31ffc737 -> :sswitch_4b
        0x66f18c8 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_a6
        :pswitch_98
        :pswitch_8a
    .end packed-switch
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget v0, p0, Lb0/i;->d:I

    invoke-static {v0}, Lb0/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb0/i;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cursor(s) are left opened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sqflite"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Lb0/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method declared-synchronized t(Ljava/lang/Boolean;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p0, Lb0/i;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb0/i;->j:I

    goto :goto_1e

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget p1, p0, Lb0/i;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb0/i;->j:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Ld0/e;)V
    .registers 3

    new-instance v0, Lb0/c;

    invoke-direct {v0, p0, p1}, Lb0/c;-><init>(Lb0/i;Ld0/e;)V

    invoke-direct {p0, p1, v0}, Lb0/i;->Q(Ld0/e;Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lb0/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method y()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb0/i;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method z()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb0/i;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
