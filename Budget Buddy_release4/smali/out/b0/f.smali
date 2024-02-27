.class public final synthetic Lb0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:Lb0/d0;


# direct methods
.method public synthetic constructor <init>(Lb0/d0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/f;->a:Lb0/d0;

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .registers 6

    iget-object v0, p0, Lb0/f;->a:Lb0/d0;

    invoke-static {v0, p1, p2, p3, p4}, Lb0/i;->e(Lb0/d0;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
