<?php

/* Handle file upload */
function handleUpload($inputName, $model=null) {
    try {
        if (request()->hasFile($inputName)) {
            if ($model && \File::exists(public_path($model->{$inputName}))) {
                \File::delete(public_path($model->{$inputName}));
            }
            $file = request()->file($inputName);
            $fileName = rand().$file->getClientOriginalName();
            $file->move(public_path('/hero_uploads'), $fileName);
            $filePath = "/hero_uploads/". $fileName;
            return $filePath;
        }
    } catch (\Throwable $th) {
        throw $th;
    }
}

/* Delete file */
function deleteFileIfExist($filePath) {
    try {
        if (\File::exists(public_path($filePath))) {
            \File::delete(public_path($filePath));
        }
    } catch (\Throwable $th) {
        throw $th;
    }
}

/* get dynamic colors */
function getColor($index) {
    $colors = ['#558bff','#fecc90','#ff885e','#282828','#190844','#9dd3ff'];
    return $colors[$index % count($colors)];
}

/* Set Sidebar Active */
function setSidebarActive($route) {
    if (is_array($route)) {
        foreach ($route as $r) {
            if (request()->routeIs($r)) {
                return 'active';
            }
        }
    }
}

?>
